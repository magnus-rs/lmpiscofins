﻿unit U_Locacoes;

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
  TFRM_Locacoes= class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Panel5: TPanel;
    Label1: TLabel;
    FDQ_MesRef: TFDQuery;
    FDQ_MesRefChave: TFDAutoIncField;
    FDQ_MesRefMes_Ref: TStringField;
    CB_MesRef: TComboBox;
    FDQ_Participantes: TFDQuery;
    DS1: TDataSource;
    FDQ_Locacoes: TFDQuery;
    FDTransaction1: TFDTransaction;
    DS2: TDataSource;
    FDUpdateSQL1: TFDUpdateSQL;
    FDQ_ParticipantesChave: TFDAutoIncField;
    FDQ_ParticipantesCodigo: TStringField;
    FDQ_ParticipantesNome: TStringField;
    FDQ_ParticipantesCNPJ: TStringField;
    FDQ_ParticipantesCod_Pais: TStringField;
    FDQ_ParticipantesCod_Municipio: TStringField;
    FDQ_ParticipantesSuframa: TStringField;
    FDQ_ParticipantesLogradouro: TStringField;
    FDQ_ParticipantesNumero: TStringField;
    FDQ_ParticipantesComplemento: TStringField;
    FDQ_ParticipantesBairro: TStringField;
    FDQ_LocacoesChave: TFDAutoIncField;
    FDQ_LocacoesidMesRef: TIntegerField;
    FDQ_LocacoesidCodPart: TIntegerField;
    FDQ_LocacoesCodPart: TStringField;
    FDQ_LocacoesPercentPis: TFloatField;
    FDQ_LocacoesPercentCofins: TFloatField;
    FDQ_LocacoesParticipante: TStringField;
    FDQ_LocacoesValorTotal: TBCDField;
    FDQ_LocacoesValRateio: TBCDField;
    FDQ_LocacoesBaseCalculo: TBCDField;
    FDQ_LocacoesValorPis: TBCDField;
    FDQ_LocacoesValorCofins: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure FDQ_LocacoesValorTotalChange(Sender: TField);
    procedure FDQ_LocacoesValRateioChange(Sender: TField);
    procedure FDQ_LocacoesBaseCalculoChange(Sender: TField);
    procedure FDQ_LocacoesBeforePost(DataSet: TDataSet);
    procedure FDQ_LocacoesAfterPost(DataSet: TDataSet);
    procedure CB_MesRefChange(Sender: TObject);
    procedure FDQ_LocacoesAfterDelete(DataSet: TDataSet);
    procedure FDQ_LocacoesCodPartChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Locacoes: TFRM_Locacoes;

implementation

{$R *.dfm}

uses U_DataModule;

procedure TFRM_Locacoes.CB_MesRefChange(Sender: TObject);
var
  nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
   FDQ_Locacoes.Close;
   FDQ_Locacoes.SQL.Clear;
   FDQ_Locacoes.SQL.Add('select * from locacoes where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Locacoes.Open;
   FDQ_Locacoes.First;
   while not FDQ_Locacoes.Eof do begin
     nValorTotal := nValorTotal+FDQ_LocacoesValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_LocacoesBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_LocacoesValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_LocacoesValorCofins.Value;
     FDQ_Locacoes.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Locacoes.FDQ_LocacoesAfterDelete(DataSet: TDataSet);
var
  nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_Locacoes.First;
   while not FDQ_Locacoes.Eof do begin
     nValorTotal := nValorTotal+FDQ_LocacoesValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_LocacoesBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_LocacoesValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_LocacoesValorCofins.Value;
     FDQ_Locacoes.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Locacoes.FDQ_LocacoesAfterPost(DataSet: TDataSet);
var
  nValorTotal, nBaseTotal, nPisTotal, nCofinsTotal:double;
begin
   nValorTotal := 0.00;
   nBaseTotal  := 0.00;
   nPisTotal   := 0.00;
   nCofinsTotal:= 0.00;
   FDQ_Locacoes.First;
   while not FDQ_Locacoes.Eof do begin
     nValorTotal := nValorTotal+FDQ_LocacoesValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_LocacoesBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_LocacoesValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_LocacoesValorCofins.Value;
     FDQ_Locacoes.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
end;

procedure TFRM_Locacoes.FDQ_LocacoesBaseCalculoChange(Sender: TField);
begin
   with FDQ_Locacoes do begin
      if (FDQ_LocacoesValorTotal.Value<>0) and (FDQ_LocacoesValRateio.Value<>0) then begin
        FDQ_LocacoesPercentPis.Value := 1.65;
        FDQ_LocacoesPercentCofins.value := 7.6;
        FDQ_LocacoesValorPis.Value := (FDQ_LocacoesBaseCalculo.Value*FDQ_LocacoesPercentPis.Value)/100;
        FDQ_LocacoesValorCofins.Value := (FDQ_LocacoesBaseCalculo.Value*FDQ_LocacoesPercentCofins.Value)/100;
      end;
   end;
end;

procedure TFRM_Locacoes.FDQ_LocacoesBeforePost(DataSet: TDataSet);
begin
  if FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]) then
     FDQ_LocacoesidMesRef.Value := FDQ_MesRefChave.Value;
end;

procedure TFRM_Locacoes.FDQ_LocacoesCodPartChange(Sender: TField);
begin
   if FDQ_Participantes.Locate('Codigo',FDQ_LocacoesCodPArt.AsString,[]) then
      FDQ_LocacoesidCodPart.Value := FDQ_ParticipantesChave.Value;
end;

procedure TFRM_Locacoes.FDQ_LocacoesValorTotalChange(Sender: TField);
begin
  if FDQ_LocacoesValRateio.Value<>0 then
    FDQ_LocacoesBaseCalculo.Value := (FDQ_LocacoesValorTotal.Value*FDQ_LocacoesValRateio.Value)/100
  Else
    FDQ_LocacoesBaseCalculo.Clear;
end;

procedure TFRM_Locacoes.FDQ_LocacoesValRateioChange(Sender: TField);
begin
  if FDQ_LocacoesValorTotal.Value<>0 then
    FDQ_LocacoesBaseCalculo.Value := (FDQ_LocacoesValorTotal.Value*FDQ_LocacoesValRateio.Value)/100
  else
    FDQ_LocacoesBaseCalculo.Clear;
end;

procedure TFRM_Locacoes.FormShow(Sender: TObject);
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
   FDQ_Locacoes.Close;
   FDQ_Locacoes.SQL.Clear;
   FDQ_Locacoes.SQL.Add('select * from locacoes where idMesRef = '+FDQ_MesRefChave.AsString);
   FDQ_Locacoes.Open;
   FDQ_Locacoes.First;
   while not FDQ_Locacoes.Eof do begin
     nValorTotal := nValorTotal+FDQ_LocacoesValorTotal.Value;
     nBaseTotal := nBaseTotal+FDQ_LocacoesBaseCalculo.Value;
     nPisTotal := nPisTotal+FDQ_LocacoesValorPis.Value;
     nCofinsTotal := nCofinsTotal+FDQ_LocacoesValorCofins.Value;
     FDQ_Locacoes.Next;
   end;
   StatusBar1.Panels[0].Text := 'Valor Total: '+FormatFloat('R$ ##,###,##0.00', nValorTotal);
   StatusBar1.Panels[1].Text := 'Base de Cálculo: '+FormatFloat('R$ ##,###,##0.00', nBaseTotal);
   StatusBar1.Panels[2].Text := 'Total de PIS: '+FormatFloat('R$ ##,###,##0.00', nPisTotal);
   StatusBar1.Panels[3].Text := 'Total de COFINS: '+FormatFloat('R$ ##,###,##0.00', nCofinsTotal);
   FDQ_Participantes.Refresh;
end;

end.
