unit U_Retencao;

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
  TFRM_Retencao = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Panel5: TPanel;
    Label1: TLabel;
    FDQ_MesRef: TFDQuery;
    FDQ_MesRefChave: TFDAutoIncField;
    FDQ_MesRefMes_Ref: TStringField;
    CB_MesRef: TComboBox;
    FDQ_Orgaos: TFDQuery;
    DS1: TDataSource;
    FDQ_Retencao: TFDQuery;
    FDTransaction1: TFDTransaction;
    DS2: TDataSource;
    FDUpdateSQL1: TFDUpdateSQL;
    FDQ_OrgaosChave: TFDAutoIncField;
    FDQ_OrgaosNome: TStringField;
    FDQ_OrgaosCNPJ: TStringField;
    FDQ_RetencaoChave: TFDAutoIncField;
    FDQ_RetencaoidMesRef: TIntegerField;
    FDQ_RetencaoidOrgao: TStringField;
    FDQ_RetencaoOrgao: TStringField;
    FDQ_RetencaoValorTotal: TBCDField;
    FDQ_RetencaoValorRetido: TBCDField;
    FDQ_RetencaoValorPis: TBCDField;
    FDQ_RetencaoValorCofins: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure FDQ_RetencaoBeforePost(DataSet: TDataSet);
    procedure CB_MesRefChange(Sender: TObject);
    procedure FDQ_RetencaoAfterPost(DataSet: TDataSet);
    procedure FDQ_RetencaoAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Retencao: TFRM_Retencao;

implementation

{$R *.dfm}

uses U_DataModule;


procedure TFRM_Retencao.CB_MesRefChange(Sender: TObject);
var
  nValorTotal, nValorRetido, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nValorRetido  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Retencao.Close;
   FDQ_Retencao.SQL.Clear;
   FDQ_Retencao.SQL.Add('select * from Retencao where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Retencao.Open;
   FDQ_Retencao.First;
   while not FDQ_Retencao.Eof do begin
     nValorTotal := nValorTotal+FDQ_RetencaoValorTotal.Value;
     nValorRetido := nValorRetido+FDQ_RetencaoValorRetido.Value;
     nPisTotal := nPisTotal+FDQ_RetencaoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_RetencaoValorCofins.Value;
     FDQ_Retencao.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Valor Retido: '+FormatFloat('R$ ##,###,##0.00', nValorRetido);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Retencao.FDQ_RetencaoAfterDelete(DataSet: TDataSet);
var
  nValorTotal, nValorRetido, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nValorRetido  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Retencao.Close;
   FDQ_Retencao.SQL.Clear;
   FDQ_Retencao.SQL.Add('select * from Retencao where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Retencao.Open;
   FDQ_Retencao.First;
   while not FDQ_Retencao.Eof do begin
     nValorTotal := nValorTotal+FDQ_RetencaoValorTotal.Value;
     nValorRetido := nValorRetido+FDQ_RetencaoValorRetido.Value;
     nPisTotal := nPisTotal+FDQ_RetencaoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_RetencaoValorCofins.Value;
     FDQ_Retencao.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Valor Retido: '+FormatFloat('R$ ##,###,##0.00', nValorRetido);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Retencao.FDQ_RetencaoAfterPost(DataSet: TDataSet);
var
  nValorTotal, nValorRetido, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nValorRetido  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Retencao.Close;
   FDQ_Retencao.SQL.Clear;
   FDQ_Retencao.SQL.Add('select * from Retencao where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Retencao.Open;
   FDQ_Retencao.First;
   while not FDQ_Retencao.Eof do begin
     nValorTotal := nValorTotal+FDQ_RetencaoValorTotal.Value;
     nValorRetido := nValorRetido+FDQ_RetencaoValorRetido.Value;
     nPisTotal := nPisTotal+FDQ_RetencaoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_RetencaoValorCofins.Value;
     FDQ_Retencao.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Valor Retido: '+FormatFloat('R$ ##,###,##0.00', nValorRetido);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Retencao.FDQ_RetencaoBeforePost(DataSet: TDataSet);
begin
  FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
  FDQ_RetencaoidMesRef.Value := FDQ_MesRefChave.Value;
end;

procedure TFRM_Retencao.FormShow(Sender: TObject);
var
   nValorTotal, nValorRetido, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nValorRetido  := 0.00;
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
   FDQ_Retencao.Close;
   FDQ_Retencao.SQL.Clear;
   FDQ_Retencao.SQL.Add('select * from Retencao where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Retencao.Open;
   FDQ_Retencao.First;
   while not FDQ_Retencao.Eof do begin
     nValorTotal := nValorTotal+FDQ_RetencaoValorTotal.Value;
     nValorRetido := nValorRetido+FDQ_RetencaoValorRetido.Value;
     nPisTotal := nPisTotal+FDQ_RetencaoValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_RetencaoValorCofins.Value;
     FDQ_Retencao.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Valor Retido: '+FormatFloat('R$ ##,###,##0.00', nValorRetido);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

end.
