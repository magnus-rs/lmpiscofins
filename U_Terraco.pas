unit U_Terraco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFRM_Terraco = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Panel5: TPanel;
    Label1: TLabel;
    FDQ_MesRef: TFDQuery;
    FDQ_MesRefChave: TFDAutoIncField;
    FDQ_MesRefMes_Ref: TStringField;
    CB_MesRef: TComboBox;
    FDQ_Participante: TFDQuery;
    DS1: TDataSource;
    FDQ_Terraco: TFDQuery;
    FDTransaction1: TFDTransaction;
    DS2: TDataSource;
    FDUpdateSQL1: TFDUpdateSQL;
    FDQ_TerracoChave: TFDAutoIncField;
    FDQ_TerracoidMesRef: TIntegerField;
    FDQ_TerracoidCodPart: TStringField;
    FDQ_TerracoPercentPis: TFloatField;
    FDQ_TerracoPercentCofins: TFloatField;
    FDQ_ParticipanteChave: TFDAutoIncField;
    FDQ_ParticipanteCodigo: TStringField;
    FDQ_ParticipanteNome: TStringField;
    FDQ_ParticipanteCNPJ: TStringField;
    FDQ_ParticipanteCod_Pais: TStringField;
    FDQ_ParticipanteCod_Municipio: TStringField;
    FDQ_ParticipanteSuframa: TStringField;
    FDQ_ParticipanteLogradouro: TStringField;
    FDQ_ParticipanteNumero: TStringField;
    FDQ_ParticipanteComplemento: TStringField;
    FDQ_ParticipanteBairro: TStringField;
    FDQ_TerracoParticipante: TStringField;
    FDQ_TerracoValorTotal: TBCDField;
    FDQ_TerracoBaseCalculo: TBCDField;
    FDQ_TerracoValorPis: TBCDField;
    FDQ_TerracoValorCofins: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure FDQ_TerracoValorTotalChange(Sender: TField);
    procedure FDQ_TerracoBeforePost(DataSet: TDataSet);
    procedure CB_MesRefChange(Sender: TObject);
    procedure FDQ_TerracoAfterPost(DataSet: TDataSet);
    procedure FDQ_TerracoAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Terraco: TFRM_Terraco;

implementation

{$R *.dfm}

uses U_DataModule;


procedure TFRM_Terraco.CB_MesRefChange(Sender: TObject);
var
  nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Terraco.Close;
   FDQ_Terraco.SQL.Clear;
   FDQ_Terraco.SQL.Add('select * from Terraco where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Terraco.Open;
   FDQ_Terraco.First;
   while not FDQ_Terraco.Eof do begin
     nValorTotal := nValorTotal+FDQ_TerracoValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_TerracoBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_TerracoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_TerracoValorCofins.Value;
     FDQ_Terraco.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Terraco.FDQ_TerracoAfterDelete(DataSet: TDataSet);
var
  nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Terraco.Close;
   FDQ_Terraco.SQL.Clear;
   FDQ_Terraco.SQL.Add('select * from Terraco where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Terraco.Open;
   FDQ_Terraco.First;
   while not FDQ_Terraco.Eof do begin
     nValorTotal := nValorTotal+FDQ_TerracoValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_TerracoBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_TerracoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_TerracoValorCofins.Value;
     FDQ_Terraco.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Terraco.FDQ_TerracoAfterPost(DataSet: TDataSet);
var
  nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Terraco.Close;
   FDQ_Terraco.SQL.Clear;
   FDQ_Terraco.SQL.Add('select * from Terraco where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Terraco.Open;
   FDQ_Terraco.First;
   while not FDQ_Terraco.Eof do begin
     nValorTotal := nValorTotal+FDQ_TerracoValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_TerracoBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_TerracoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_TerracoValorCofins.Value;
     FDQ_Terraco.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Terraco.FDQ_TerracoBeforePost(DataSet: TDataSet);
begin
  FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
  FDQ_TerracoidMesRef.Value := FDQ_MesRefChave.Value;
end;

procedure TFRM_Terraco.FDQ_TerracoValorTotalChange(Sender: TField);
begin
   FDQ_TerracoBaseCalculo.Value := FDQ_TerracoValorTotal.Value;
   FDQ_TerracoPercentPis.Value := 1.65;
   FDQ_TerracoPercentCofins.Value := 7.6;
   FDQ_TerracoValorPis.Value := ((FDQ_TerracoBaseCalculo.Value*1.65)/100);
   FDQ_TerracoValorCofins.Value := ((FDQ_TerracoBaseCalculo.Value*7.6)/100);
end;

procedure TFRM_Terraco.FormShow(Sender: TObject);
var
   nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   CB_MesRef.Items.Clear;
   FDQ_MesRef.Refresh;
   FDQ_MesRef.First;
   while not FDQ_Mesref.Eof do begin
     CB_MesRef.Items.Add(FDQ_MesRefMes_Ref.AsString);
     FDQ_MesRef.Next;
   end;
   CB_MesRef.ItemIndex := (CB_MesRef.Items.Count-1);
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Terraco.Close;
   FDQ_Terraco.SQL.Clear;
   FDQ_Terraco.SQL.Add('select * from terraco where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Terraco.Open;
   FDQ_Terraco.First;
   while not FDQ_Terraco.Eof do begin
     nValorTotal := nValorTotal+FDQ_TerracoValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_TerracoBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_TerracoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_TerracoValorCofins.Value;
     FDQ_Terraco.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

end.
