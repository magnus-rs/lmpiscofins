unit U_Lanca_Receitas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrEPCBlocos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFRM_Lanca_Receitas = class(TForm)
    FDQ_Receitas: TFDQuery;
    DSF100: TDataSource;
    FDQ_CTB: TFDQuery;
    FDQ_CTBChave: TFDAutoIncField;
    FDQ_CTBData_Alt: TSQLTimeStampField;
    FDQ_CTBCodigo: TStringField;
    FDQ_CTBNome: TStringField;
    FDQ_CTBTipo: TStringField;
    FDQ_CTBNatureza: TStringField;
    FDQ_CTBNivel: TStringField;
    DS0500: TDataSource;
    CDS0500: TClientDataSet;
    CDS0500DT_ALT: TDateTimeField;
    CDS0500COD_NAT_CC: TStringField;
    CDS0500IND_CTA: TStringField;
    CDS0500NIVEL: TStringField;
    CDS0500COD_CTA: TStringField;
    CDS0500NOME_CTA: TStringField;
    CDS0500COD_CTA_REF: TStringField;
    CDS0500CNPJ_EST: TStringField;
    CDSF100: TClientDataSet;
    CDSF100IND_OPER: TStringField;
    CDSF100COD_PART: TStringField;
    CDSF100COD_ITEM: TStringField;
    CDSF100VL_OPER: TFloatField;
    CDSF100CST_PIS: TStringField;
    CDSF100VL_BC_PIS: TFloatField;
    CDSF100ALIQ_PIS: TFloatField;
    CDSF100VL_PIS: TFloatField;
    CDSF100CST_COFINS: TStringField;
    CDSF100VL_BC_COFINS: TFloatField;
    CDSF100ALIQ_COFINS: TFloatField;
    CDSF100VL_COFINS: TFloatField;
    CDSF100NAT_BC_CRED: TStringField;
    CDSF100IND_ORIG_CRED: TStringField;
    CDSF100COD_CTA: TStringField;
    CDSF100COD_CCUS: TStringField;
    CDSF100DESC_DOC_OPER: TStringField;
    CDSF100DT_OPER: TDateField;
    CDSF010: TClientDataSet;
    CDSF010CNPJ: TStringField;
    FDQ_Empresa: TFDQuery;
    FDQ_EmpresaChave: TFDAutoIncField;
    FDQ_EmpresaCNPJ: TStringField;
    FDQ_EmpresaRazao_Social: TStringField;
    FDQ_EmpresaDescricao: TStringField;
    FDQ_MesRef: TFDQuery;
    FDQ_MesRefChave: TFDAutoIncField;
    FDQ_MesRefMes_Ref: TStringField;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    DBGrid3: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CB_MesRef: TComboBox;
    CB_Empresa: TComboBox;
    Panel3: TPanel;
    FDQ_ReceitasChave: TFDAutoIncField;
    FDQ_ReceitasidMesRef: TIntegerField;
    FDQ_ReceitasidCodCTB: TStringField;
    FDQ_ReceitasValorTotal: TBCDField;
    FDQ_ReceitasBaseCalculo: TBCDField;
    FDQ_ReceitasPercentPis: TFloatField;
    FDQ_ReceitasValorPis: TBCDField;
    FDQ_ReceitasPercentCofins: TFloatField;
    FDQ_ReceitasValorCofins: TBCDField;
    BTN_ADDSPED: TButton;
    BTS_DELF100: TButton;
    BTN_F100: TButton;
    procedure RestartDataSet;
    procedure InsereF100;
    procedure Insere0500;
    procedure FormShow(Sender: TObject);
    procedure BTN_F100Click(Sender: TObject);
    procedure BTS_DELF100Click(Sender: TObject);
    procedure BTN_ADDSPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Lanca_Receitas: TFRM_Lanca_Receitas;

implementation

{$R *.dfm}

uses U_Principal, U_DataModule;

procedure TFRM_Lanca_Receitas.BTN_ADDSPEDClick(Sender: TObject);
begin
 InsereF100;
 Insere0500;
 BTS_DELF100.Enabled := False;
 BTN_ADDSPED.Enabled := False;
 FormShow(Sender);
 MessageDlg('Processo de Inclus�o Conclu�do.',mtInformation, [mbok],0) ;
 Close;
end;

procedure TFRM_Lanca_Receitas.BTN_F100Click(Sender: TObject);
begin
if FDQ_Receitas.RecordCount > 0 then begin
  FDQ_Receitas.First;
  while not FDQ_Receitas.Eof do begin
      CDSF100.Append;
      CDSF100IND_OPER.Value     := '1';
      CDSF100COD_PART.Value     := '';
      CDSF100COD_ITEM.Value     := '';
      CDSF100DT_OPER.Value      := FRM_Principal.SpedPC.Bloco_0.Registro0000.DT_FIN;
      CDSF100VL_OPER.Value      := FDQ_ReceitasVALORTOTAL.Value;
      CDSF100CST_PIS.Value      := '02';
      CDSF100VL_BC_PIS.Value    := FDQ_ReceitasBASECALCULO.Value;
      CDSF100ALIQ_PIS.Value     := FDQ_ReceitasPercentPis.Value;
      CDSF100VL_PIS.Value       := FDQ_ReceitasVALORPIS.Value;
      CDSF100CST_COFINS.Value   := '02';
      CDSF100VL_BC_COFINS.Value := FDQ_ReceitasBASECALCULO.Value;
      CDSF100ALIQ_COFINS.Value  := FDQ_ReceitasPercentCofins.Value;
      CDSF100VL_COFINS.Value    := FDQ_ReceitasVALORCOFINS.Value;
      CDSF100NAT_BC_CRED.Value  := '';
      CDSF100IND_ORIG_CRED.Value:= '';
      CDSF100COD_CTA.Value      := FDQ_ReceitasidCodCTB.Value;
      CDSF100COD_CCUS.Value     := '';
      CDSF100DESC_DOC_OPER.Value:= '';
      CDSF100.Post;
      FDQ_CTB.Locate('Codigo',FDQ_ReceitasidCodCTB.Value);
      CDS0500.Append;
      CDS0500DT_ALT.Value      := FDQ_CTBData_Alt.AsDateTime;
      CDS0500COD_NAT_CC.Value  := FDQ_CTBNatureza.Value;
      CDS0500IND_CTA.Value     := FDQ_CTBTipo.Value;
      CDS0500NIVEL.Value       := FDQ_CTBNivel.Value;
      CDS0500COD_CTA.Value     := FDQ_CTBCodigo.Value;
      CDS0500NOME_CTA.Value    := FDQ_CTBNome.Value;
      CDS0500COD_CTA_REF.Value := '';
      CDS0500CNPJ_EST.Value    := '';
      CDS0500.Post;
      BTS_DELF100.Enabled := True;
      BTN_ADDSPED.Enabled := True;
      FDQ_Receitas.Next;
  end;
  if MessageDlg('Deseja Inserir as Informa��es no SPED?',mtConfirmation,[mbyes,mbno],0)=mryes then begin
    InsereF100;
    Insere0500;
    BTS_DELF100.Enabled := False;
    BTN_ADDSPED.Enabled := False;
    FormShow(Sender);
    MessageDlg('Processo de Inclus�o Conclu�do.',mtInformation, [mbok],0) ;
    Close;
  end;
end
else
  MessageDlg('Nenhum Informa��o encontrada!',mtInformation,[mbok],0);
end;

procedure TFRM_Lanca_Receitas.BTS_DELF100Click(Sender: TObject);
begin
  if CDSF100.Active then
     CDSF100.EmptyDataSet;
  CDSF100.Close;
  CDSF100.CreateDataSet;

  if CDS0500.Active then
     CDS0500.EmptyDataSet;
  CDS0500.Close;
  CDS0500.CreateDataSet;

  BTS_DELF100.Enabled := False;
  BTN_ADDSPED.Enabled := False;
end;

procedure TFRM_Lanca_Receitas.FormShow(Sender: TObject);
begin
  CB_MesRef.Items.Clear;
  FDQ_MesRef.Refresh;
  FDQ_MesRef.First;
  while not FDQ_MesRef.Eof do begin
    CB_MesRef.Items.Add(FDQ_MesRefMes_Ref.AsString);
    FDQ_MesRef.Next;
  end;
  with FRM_Principal do begin
    CB_MesRef.Text := FormatDateTime('mmyyyy',SpedPC.Bloco_0.Registro0000.DT_INI);
  end;
  FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
  FDQ_Receitas.Close;
  FDQ_Receitas.SQL.Clear;
  FDQ_Receitas.SQL.Add('select * from ReceitasFin where idMesRef = '+FDQ_MesRefChave.AsString);
  FDQ_Receitas.Open;
  CB_Empresa.Items.Clear;
  FDQ_Empresa.Refresh;
  FDQ_Empresa.First;
  while not FDQ_Empresa.eof do begin
    CB_Empresa.Items.Add(FDQ_EmpresaDescricao.AsString);
    FDQ_Empresa.Next;
  end;
  FDQ_Empresa.First;
  CB_Empresa.Text := FDQ_EmpresaDescricao.AsString;
  FDQ_CTB.Refresh;
  FDQ_CTB.First;
  RestartDataSet;
  FDQ_Empresa.Locate('Descricao',CB_Empresa.Text);
  CDSF010.Append;
  CDSF010CNPJ.Value := FDQ_EmpresaCNPJ.Value;
  CDSF010.Post;
end;

procedure TFRM_Lanca_Receitas.RestartDataSet;
begin

  if CDSF010.Active then
     CDSF010.EmptyDataSet;
  CDSF010.Close;
  CDSF010.CreateDataSet;

  if CDSF100.Active then
     CDSF100.EmptyDataSet;
  CDSF100.Close;
  CDSF100.CreateDataSet;

  if CDS0500.Active then
     CDS0500.EmptyDataSet;
  CDS0500.Close;
  CDS0500.CreateDataSet;

end;

procedure TFRM_Lanca_Receitas.Insere0500;
var
i:integer;
begin
  with FRM_Principal.SpedPC.Bloco_0.Registro0001 do begin
      i := Registro0500.Count;
      CDS0500.First;
      while not CDS0500.Eof do begin
        Registro0500.New;
        with Registro0500.Items[i] do begin
           DT_ALT     := CDS0500DT_ALT.Value;
           COD_NAT_CC := ncgResultado;
           IND_CTA    := indCTAnalitica;
           NIVEL      := CDS0500Nivel.AsString;
           COD_CTA    := CDS0500COD_CTA.AsString;
           NOME_CTA   := CDS0500NOME_CTA.AsString;
        end;
        i:=(i+1);
        CDS0500.Next;
      end;
  end;
end;

procedure TFRM_Lanca_Receitas.InsereF100;
var
i: integer;
begin
  with FRM_Principal.SpedPC.Bloco_F do begin
      if RegistroF001.IND_MOV <> imComDados then
         RegistroF001.IND_MOV := imComDados;
      with RegistroF001 do begin
        if RegistroF010.Count = 0 then begin
          RegistroF010New;
          RegistroF010.Items[0].CNPJ := CDSF010CNPJ.AsString;
        end;
        with RegistroF010.Items[0] do begin
          i:=registrof100.Count;
          CDSF100.First;
          while not CDSF100.Eof do begin
            RegistroF100New;
            with RegistroF100.Items[i] do begin
              IND_OPER := indRepReceitaAuferida;
              COD_PART := CDSF100COD_PART.AsString;
              COD_ITEM := CDSF100COD_ITEM.AsString;
              DT_OPER  := CDSF100DT_OPER.Value;
              VL_OPER  := CDSF100VL_OPER.Value;
              CST_PIS  := stpisValorAliquotaDiferenciada;
              VL_BC_PIS := CDSF100VL_BC_PIS.Value;
              ALIQ_PIS := CDSF100ALIQ_PIS.Value;
              VL_PIS   := CDSF100VL_PIS.Value;
              CST_COFINS := stcofinsValorAliquotaDiferenciada;
              VL_BC_COFINS := CDSF100VL_BC_COFINS.Value;
              ALIQ_COFINS  := CDSF100ALIQ_COFINS.Value;
              VL_COFINS    := CDSF100VL_COFINS.Value;
//              NAT_BC_CRED  := NULL;
              IND_ORIG_CRED  := opcVazio;
              COD_CTA := CDSF100COD_CTA.AsString;
//              COD_CCUS := NULL;
              DESC_DOC_OPER := CDSF100DESC_DOC_OPER.AsString;
            end;
            i:=(i+1);
            CDSF100.Next;
          end;
        end;
      end;
  end;
end;

end.
