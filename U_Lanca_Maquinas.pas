unit U_Lanca_Maquinas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.UITypes, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrEPCBlocos, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFRM_Lanca_Maquinas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CB_MesRef: TComboBox;
    CB_Empresa: TComboBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ListParticipantes: TListBox;
    GroupBox2: TGroupBox;
    ListSelecionados: TListBox;
    BTNAdicionar: TBitBtn;
    BTNRemover: TBitBtn;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    ListCTB: TListBox;
    GroupBox6: TGroupBox;
    ListCTBSelecionadas: TListBox;
    BTN_ADDCTB: TBitBtn;
    BTN_DELCTB: TBitBtn;
    Panel4: TPanel;
    BTN_F100: TButton;
    BTS_DELF100: TButton;
    BTN_ADDSPED: TButton;
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    DBGrid3: TDBGrid;
    FDQ_MesRef: TFDQuery;
    FDQ_MesRefChave: TFDAutoIncField;
    FDQ_MesRefMes_Ref: TStringField;
    FDQ_Empresa: TFDQuery;
    FDQ_EmpresaChave: TFDAutoIncField;
    FDQ_EmpresaCNPJ: TStringField;
    FDQ_EmpresaRazao_Social: TStringField;
    FDQ_EmpresaDescricao: TStringField;
    FDQ_Participantes: TFDQuery;
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
    CDSF010: TClientDataSet;
    CDSF010CNPJ: TStringField;
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
    CDS0500: TClientDataSet;
    CDS0500DT_ALT: TDateTimeField;
    CDS0500COD_NAT_CC: TStringField;
    CDS0500IND_CTA: TStringField;
    CDS0500NIVEL: TStringField;
    CDS0500COD_CTA: TStringField;
    CDS0500NOME_CTA: TStringField;
    CDS0500COD_CTA_REF: TStringField;
    CDS0500CNPJ_EST: TStringField;
    CDS0150: TClientDataSet;
    CDS0150COD_PART: TStringField;
    CDS0150NOME: TStringField;
    CDS0150COD_PAIS: TStringField;
    CDS0150CNPJ: TStringField;
    CDS0150CPF: TStringField;
    CDS0150IE: TStringField;
    CDS0150COD_MUN: TStringField;
    CDS0150SUFRAMA: TStringField;
    CDS0150END: TStringField;
    CDS0150NUM: TStringField;
    CDS0150COMPL: TStringField;
    CDS0150BAIRRO: TStringField;
    DS0150: TDataSource;
    DS0500: TDataSource;
    FDQ_CTB: TFDQuery;
    FDQ_CTBChave: TFDAutoIncField;
    FDQ_CTBData_Alt: TSQLTimeStampField;
    FDQ_CTBCodigo: TStringField;
    FDQ_CTBNome: TStringField;
    FDQ_CTBTipo: TStringField;
    FDQ_CTBNatureza: TStringField;
    FDQ_CTBNivel: TStringField;
    DSF100: TDataSource;
    FDQ_Locacoes: TFDQuery;
    FDQ_LocacoesChave: TFDAutoIncField;
    FDQ_LocacoesidMesRef: TIntegerField;
    FDQ_LocacoesidCodPart: TIntegerField;
    FDQ_LocacoesCodPart: TStringField;
    FDQ_LocacoesPercentPis: TFloatField;
    FDQ_LocacoesPercentCofins: TFloatField;
    FDQ_LocacoesValorTotal: TBCDField;
    FDQ_LocacoesValRateio: TBCDField;
    FDQ_LocacoesBaseCalculo: TBCDField;
    FDQ_LocacoesValorPis: TBCDField;
    FDQ_LocacoesValorCofins: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure RestartDataSet;
    procedure InsereF100;
    procedure Insere0500;
    procedure Insere0150;
    procedure BTNAdicionarClick(Sender: TObject);
    procedure BTNRemoverClick(Sender: TObject);
    procedure BTN_ADDCTBClick(Sender: TObject);
    procedure BTN_DELCTBClick(Sender: TObject);
    procedure BTN_F100Click(Sender: TObject);
    procedure BTS_DELF100Click(Sender: TObject);
    procedure BTN_ADDSPEDClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Lanca_Maquinas: TFRM_Lanca_Maquinas;

implementation

{$R *.dfm}

uses U_DataModule, U_Principal;

procedure TFRM_Lanca_Maquinas.BTNAdicionarClick(Sender: TObject);
var
i: integer;
begin
 i := ListParticipantes.ItemIndex;
 ListSelecionados.Items.Add( ListParticipantes.Items[i] );
 if FDQ_participantes.Locate('Nome',ListParticipantes.Items[i]) then begin
   CDS0150.Append;
   CDS0150COD_PART.Value := FDQ_ParticipantesCodigo.Value;
   CDS0150NOME.Value     := FDQ_ParticipantesNome.Value;
   CDS0150COD_PAIS.Value := FDQ_ParticipantesCod_pais.Value;
   CDS0150CNPJ.Value     := FDQ_ParticipantesCNPJ.Value;
   CDS0150CPF.Value      := '';
   CDS0150IE.Value       := '';
   CDS0150COD_MUN.Value  := FDQ_ParticipantesCod_Municipio.Value;
   CDS0150SUFRAMA.Value  := FDQ_ParticipantesSuframa.Value;
   CDS0150END.Value      := FDQ_ParticipantesLogradouro.Value;
   CDS0150NUM.Value      := FDQ_ParticipantesNumero.Value;
   CDS0150COMPL.Value    := FDQ_ParticipantesComplemento.Value;
   CDS0150BAIRRO.Value   := FDQ_ParticipantesBairro.Value;
   CDS0150.Post;
 end;
 ListParticipantes.Items.Delete(i);
 ListParticipantes.ItemIndex := 0;
 BTNRemover.Enabled := True;
 if ListParticipantes.Items.Count = 0 then
   BTNAdicionar.Enabled := False;
end;

procedure TFRM_Lanca_Maquinas.BTNRemoverClick(Sender: TObject);
var
i: integer;
begin
 i := ListSelecionados.ItemIndex;
 ListParticipantes.Items.Add(ListSelecionados.Items[i]);
 if CDS0150.Locate('NOME',ListSelecionados.Items[i],[]) then  begin
   CDS0150.Delete;
 end;
 ListSelecionados.Items.Delete(i);
 ListSelecionados.ItemIndex := 0;
 BTNAdicionar.Enabled := True;
 if ListSelecionados.Items.Count = 0 then
   BTNRemover.Enabled := False;
end;

procedure TFRM_Lanca_Maquinas.BTN_ADDCTBClick(Sender: TObject);
var
i: integer;
begin
  i := ListCTB.ItemIndex;
  ListCTBSelecionadas.Items.Add( ListCTB.Items[i] );
  if FDQ_CTB.Locate('Nome',ListCTB.Items[i]) then begin
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
  end;
  ListCTB.Items.Delete(i);
  ListCTB.ItemIndex := 0;
  BTN_DELCTB.Enabled := True;
  if ListCTB.Items.Count = 0 then begin
   BTN_ADDCTB.Enabled := False;
   BTN_F100.Enabled := False;
  end;
  BTN_F100.Enabled := True;
end;

procedure TFRM_Lanca_Maquinas.BTN_ADDSPEDClick(Sender: TObject);
begin
  InsereF100;
  Insere0500;
  Insere0150;
  FormShow(sender);
  MessageDlg('Processo de Inclusão Concluído.',mtInformation, [mbok],0) ;
  Close;
end;

procedure TFRM_Lanca_Maquinas.BTN_DELCTBClick(Sender: TObject);
var
i: integer;
begin
 i := ListCTBSelecionadas.ItemIndex;
 ListCTB.Items.Add(ListCTBSelecionadas.Items[i]);
 if CDS0500.Locate('NOME_CTA',ListCTBSelecionadas.Items[i],[]) then  begin
   CDS0500.Delete;
 end;
 ListCTBSelecionadas.Items.Delete(i);
 ListCTBSelecionadas.ItemIndex := 0;
 if ListCTBSelecionadas.Items.Count = 0 then begin
   BTN_DELCTB.Enabled := False;
   BTN_F100.Enabled := False;
 end;
end;

procedure TFRM_Lanca_Maquinas.BTN_F100Click(Sender: TObject);
begin
  CDS0150.First;
  while not CDS0150.Eof do begin
    if FDQ_Locacoes.Locate('CodPart',CDS0150COD_PART.Value) then begin
      CDSF100.Append;
      CDSF100IND_OPER.Value     := '0';
      CDSF100COD_PART.Value     := CDS0150COD_PART.Value;
      CDSF100COD_ITEM.Value     := '';
      CDSF100DT_OPER.Value      := FRM_Principal.SpedPC.Bloco_0.Registro0000.DT_FIN;
      CDSF100VL_OPER.Value      := FDQ_LocacoesVALORTOTAL.Value;
      CDSF100CST_PIS.Value      := '50';
      CDSF100VL_BC_PIS.Value    := FDQ_LocacoesBASECALCULO.Value;
      CDSF100ALIQ_PIS.Value     := 1.65;
      CDSF100VL_PIS.Value       := FDQ_LocacoesVALORPIS.Value;
      CDSF100CST_COFINS.Value   := '50';
      CDSF100VL_BC_COFINS.Value := FDQ_LocacoesBASECALCULO.Value;
      CDSF100ALIQ_COFINS.Value  := 7.6;
      CDSF100VL_COFINS.Value    := FDQ_LocacoesVALORCOFINS.Value;
      CDSF100NAT_BC_CRED.Value  := '06';
      CDSF100IND_ORIG_CRED.Value:= '0';
      CDSF100COD_CTA.Value      := CDS0500COD_CTA.Value;
      CDSF100COD_CCUS.Value     := '';
      CDSF100DESC_DOC_OPER.Value:= '';
      CDSF100.Post;
      BTS_DELF100.Enabled := True;
      BTN_ADDSPED.Enabled := True;
    end;
    CDS0150.Next;
  end;
  if MessageDlg('Deseja Inserir as Informações no SPED?',mtConfirmation,[mbyes,mbno],0)=mryes then begin
    InsereF100;
    Insere0500;
    Insere0150;
    BTS_DELF100.Enabled := False;
    BTN_ADDSPED.Enabled := False;
    FormShow(Sender);
    MessageDlg('Processo de Inclusão Concluído.',mtInformation, [mbok],0) ;
    Close;
  end;
end;

procedure TFRM_Lanca_Maquinas.BTS_DELF100Click(Sender: TObject);
begin
  if CDSF100.Active then
     CDSF100.EmptyDataSet;
  CDSF100.Close;
  CDSF100.CreateDataSet;
  BTS_DELF100.Enabled := False;
  BTN_ADDSPED.Enabled := False;
end;

procedure TFRM_Lanca_Maquinas.FormShow(Sender: TObject);
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
  FDQ_Locacoes.Close;
  FDQ_Locacoes.SQL.Clear;
  FDQ_Locacoes.SQL.Add('select * from Locacoes where idMesRef = '+FDQ_MesRefChave.AsString);
  FDQ_Locacoes.Open;
  CB_Empresa.Items.Clear;
  FDQ_Empresa.Refresh;
  FDQ_Empresa.First;
  while not FDQ_Empresa.eof do begin
    CB_Empresa.Items.Add(FDQ_EmpresaDescricao.AsString);
    FDQ_Empresa.Next;
  end;
  FDQ_Empresa.First;
  CB_Empresa.Text := FDQ_EmpresaDescricao.AsString;
  ListParticipantes.Items.Clear;
  ListSelecionados.Items.Clear;
  FDQ_Participantes.Refresh;
  FDQ_Participantes.First;
  while not FDQ_Participantes.Eof do begin
    ListParticipantes.Items.Add(FDQ_ParticipantesNome.AsString);
    FDQ_Participantes.Next
  end;
  ListParticipantes.ItemIndex := 0;
  ListSelecionados.Items.Clear;
  ListCTB.Items.Clear;
  ListCTBSelecionadas.Items.Clear;
  FDQ_CTB.Refresh;
  FDQ_CTB.First;
  while not FDQ_CTB.Eof do begin
    ListCTB.Items.Add(FDQ_CTBNome.AsString);
    FDQ_CTB.Next
  end;
  ListCTB.ItemIndex := 0;
  RestartDataSet;
  FDQ_Empresa.Locate('Descricao',CB_Empresa.Text);
  CDSF010.Append;
  CDSF010CNPJ.Value := FDQ_EmpresaCNPJ.Value;
  CDSF010.Post;
  BTN_F100.Enabled:=False;
end;

procedure TFRM_Lanca_Maquinas.RestartDataSet;
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

  if CDS0150.Active then
     CDS0150.EmptyDataSet;
  CDS0150.Close;
  CDS0150.CreateDataSet;
end;

procedure TFRM_Lanca_Maquinas.Insere0150;
var
i:integer;
begin
  with FRM_Principal.SpedPC.Bloco_0.Registro0001.Registro0140.Items[0] do begin
    i := Registro0150.Count;
    CDS0150.First;
    while not CDS0150.Eof do begin
      registro0150.New;
      with Registro0150.Items[i] do begin
        COD_PART := CDS0150COD_PART.AsString;
        NOME     := CDS0150NOME.AsString;
        COD_PAIS := CDS0150COD_PAIS.AsString;
        CNPJ     := CDS0150CNPJ.AsString;
        CPF      := '';
        IE       := '';
        COD_MUN  := CDS0150COD_MUN.AsInteger;
        SUFRAMA  := CDS0150SUFRAMA.AsString;
        ENDERECO := CDS0150END.AsString;
        NUM      := CDS0150NUM.AsString;
        COMPL    := CDS0150COMPL.AsString;
        BAIRRO   := CDS0150BAIRRO.AsString;
      end;
      i:=(i+1);
      CDS0150.Next;
    end;
  end;
 end;


procedure TFRM_Lanca_Maquinas.Insere0500;
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

procedure TFRM_Lanca_Maquinas.InsereF100;
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
              IND_OPER := indRepCustosDespesasEncargos;
              COD_PART := CDSF100COD_PART.AsString;
              COD_ITEM := CDSF100COD_ITEM.AsString;
              DT_OPER  := CDSF100DT_OPER.Value;
              VL_OPER  := CDSF100VL_OPER.Value;
              CST_PIS  := stpisOperCredExcRecTribMercInt;
              VL_BC_PIS := CDSF100VL_BC_PIS.Value;
              ALIQ_PIS := CDSF100ALIQ_PIS.Value;
              VL_PIS   := CDSF100VL_PIS.Value;
              CST_COFINS := stcofinsOperCredExcRecTribMercInt;
              VL_BC_COFINS := CDSF100VL_BC_COFINS.Value;
              ALIQ_COFINS  := CDSF100ALIQ_COFINS.Value;
              VL_COFINS    := CDSF100VL_COFINS.Value;
              NAT_BC_CRED  := bccAluguelMaqEquipamentos;
              IND_ORIG_CRED  := opcMercadoInterno;
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
