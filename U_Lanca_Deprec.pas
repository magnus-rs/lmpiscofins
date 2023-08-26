unit U_Lanca_Deprec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.UITypes, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrEPCBlocos, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFRM_Lanca_Deprec = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CB_MesRef: TComboBox;
    CB_Empresa: TComboBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ListDeprec: TListBox;
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
    BTN_F120: TButton;
    BTS_DELF120: TButton;
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
    FDQ_DepAmor: TFDQuery;
    CDSF010: TClientDataSet;
    CDSF010CNPJ: TStringField;
    CDSF120: TClientDataSet;
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
    DSF120: TDataSource;
    FDQ_Deprec: TFDQuery;
    FDQ_DepAmorChave: TFDAutoIncField;
    FDQ_DepAmorNome: TStringField;
    CDS0150Chave: TIntegerField;
    CDS0150Nome: TStringField;
    FDQ_DeprecChave: TFDAutoIncField;
    FDQ_DeprecidDepAmor: TIntegerField;
    FDQ_DeprecidMesRef: TIntegerField;
    FDQ_DeprecValorTotal: TBCDField;
    FDQ_DeprecRateio: TBCDField;
    FDQ_DeprecBaseCalculo: TBCDField;
    FDQ_DeprecPercentPis: TFloatField;
    FDQ_DeprecValorPis: TBCDField;
    FDQ_DeprecPercentCofins: TFloatField;
    FDQ_DeprecValorCofins: TBCDField;
    FDQ_DeprecValorParcela: TBCDField;
    CDSF120NAT_BC_CRED: TStringField;
    CDSF120IND_ORIG_CRED: TStringField;
    CDSF120IND_UTIL_BEM_IMOB: TIntegerField;
    CDSF120VL_OPER_DEP: TFloatField;
    CDSF120PARC_OPER_NAO_BC_CRED: TFloatField;
    CDSF120CST_PIS: TIntegerField;
    CDSF120VL_BC_PIS: TFloatField;
    CDSF120ALIQ_PIS: TFloatField;
    CDSF120VL_PIS: TFloatField;
    CDSF120CST_COFINS: TIntegerField;
    CDSF120VL_BC_COFINS: TFloatField;
    CDSF120ALIQ_COFINS: TFloatField;
    CDSF120VL_COFINS: TFloatField;
    CDSF120COD_CTA: TStringField;
    CDSF120COD_CCUS: TStringField;
    CDSF120DESC_BEM_IMOB: TStringField;
    CDSF120IDENT_BEM_IMOB: TStringField;
    procedure FormShow(Sender: TObject);
    procedure RestartDataSet;
    procedure InsereF120;
    procedure Insere0500;
    procedure BTNAdicionarClick(Sender: TObject);
    procedure BTNRemoverClick(Sender: TObject);
    procedure BTN_ADDCTBClick(Sender: TObject);
    procedure BTN_DELCTBClick(Sender: TObject);
    procedure BTN_F120Click(Sender: TObject);
    procedure BTS_DELF120Click(Sender: TObject);
    procedure BTN_ADDSPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Lanca_Deprec: TFRM_Lanca_Deprec;

implementation

{$R *.dfm}

uses U_DataModule, U_Principal;

procedure TFRM_Lanca_Deprec.BTNAdicionarClick(Sender: TObject);
var
i: integer;

begin
 i := ListDeprec.ItemIndex;
 ListSelecionados.Items.Add( ListDeprec.Items[i] );
 FDQ_DepAmor.Locate('Nome',ListDeprec.Items[i]);
 if FDQ_Deprec.Locate('idDepAmor',FDQ_DepAmorChave.Value) then begin
   CDS0150.Append;
     CDS0150Chave.Value := FDQ_DepAmorChave.Value;
     CDS0150Nome.Value  := FDQ_DepAmorNome.Value;
   CDS0150.Post;
 end
 else
   MessageDlg('Nenhum lan�amento encontrado para o per�odo selecionado!',mtInformation, [mbok],0) ;
 ListDeprec.Items.Delete(i);
 ListDeprec.ItemIndex := 0;
 BTNRemover.Enabled := True;
 if ListDeprec.Items.Count = 0 then
   BTNAdicionar.Enabled := False;
end;

procedure TFRM_Lanca_Deprec.BTNRemoverClick(Sender: TObject);
var
i: integer;
begin
 i := ListSelecionados.ItemIndex;
 ListDeprec.Items.Add(ListSelecionados.Items[i]);
 if CDS0150.Locate('NOME',ListSelecionados.Items[i],[]) then  begin
   CDS0150.Delete;
 end;
 ListSelecionados.Items.Delete(i);
 ListSelecionados.ItemIndex := 0;
 BTNAdicionar.Enabled := True;
 if ListSelecionados.Items.Count = 0 then
   BTNRemover.Enabled := False;
end;

procedure TFRM_Lanca_Deprec.BTN_ADDCTBClick(Sender: TObject);
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
   BTN_F120.Enabled := False;
  end;
  BTN_F120.Enabled := True;
end;

procedure TFRM_Lanca_Deprec.BTN_ADDSPEDClick(Sender: TObject);
begin
 InsereF120;
 Insere0500;
 BTS_DELF120.Enabled := False;
 BTN_ADDSPED.Enabled := False;
 FormShow(Sender);
 MessageDlg('Processo de Inclus�o Conclu�do.',mtInformation, [mbok],0) ;
 Close;
end;

procedure TFRM_Lanca_Deprec.BTN_DELCTBClick(Sender: TObject);
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
   BTN_F120.Enabled := False;
 end;
end;

procedure TFRM_Lanca_Deprec.BTN_F120Click(Sender: TObject);
begin
  CDS0150.First;
  while not CDS0150.Eof do begin
    if FDQ_Deprec.Locate('idDepAmor',CDS0150Chave.Value) then begin
      CDSF120.Append;
      if CDS0150Nome.Value = 'DEPRECIA��O' then begin
        CDSF120NAT_BC_CRED.Value     := '09';
        CDSF120IDENT_BEM_IMOB.Value  := '01';
        CDSF120DESC_BEM_IMOB.Value   := 'DEPRECIA��O';
      end
      else begin
        CDSF120NAT_BC_CRED.Value     := '11';
        CDSF120IDENT_BEM_IMOB.Value  := '02';
        CDSF120DESC_BEM_IMOB.Value   := 'AMORTIZA��O';
      end;
      CDSF120IND_ORIG_CRED.Value     := '0';
      CDSF120IND_UTIL_BEM_IMOB.Value := 02;
      CDSF120VL_OPER_DEP.Value       := FDQ_DeprecValorTotal.Value;
      CDSF120PARC_OPER_NAO_BC_CRED.Value := FDQ_DeprecValorParcela.Value;
      CDSF120CST_PIS.Value           := 50;
      CDSF120VL_BC_PIS.Value         := FDQ_DeprecBaseCalculo.Value;
      CDSF120ALIQ_PIS.value          := FDQ_Deprecpercentpis.AsFloat;
      CDSF120VL_PIS.Value            := FDQ_DeprecValorPis.Value;
      CDSF120CST_COFINS.Value        := 50;
      CDSF120VL_BC_COFINS.Value      := FDQ_DeprecBaseCalculo.Value;
      CDSF120ALIQ_COFINS.Value       := FDQ_DeprecPercentCofins.AsFloat;
      CDSF120VL_COFINS.Value         := FDQ_DeprecValorCofins.Value;
      CDSF120COD_CTA.Value           := CDS0500COD_CTA.Value;
      CDSF120COD_CCUS.Value          := '';
      CDSF120.Post;
      BTS_DELF120.Enabled := True;
      BTN_ADDSPED.Enabled := True;
    end;
    CDS0150.Next;
  end;
  if MessageDlg('Deseja Inserir as Informa��es no SPED?',mtConfirmation,[mbyes,mbno],0)=mryes then begin
    InsereF120;
    Insere0500;
    BTS_DELF120.Enabled := False;
    BTN_ADDSPED.Enabled := False;
    FormShow(Sender);
    MessageDlg('Processo de Inclus�o Conclu�do.',mtInformation, [mbok],0) ;
    Close;
  end;
end;

procedure TFRM_Lanca_Deprec.BTS_DELF120Click(Sender: TObject);
begin
  if CDSF120.Active then
     CDSF120.EmptyDataSet;
  CDSF120.Close;
  CDSF120.CreateDataSet;
  BTS_DELF120.Enabled := False;
  BTN_ADDSPED.Enabled := False;
end;

procedure TFRM_Lanca_Deprec.FormShow(Sender: TObject);
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
  FDQ_Deprec.Close;
  FDQ_Deprec.SQL.Clear;
  FDQ_Deprec.SQL.Add('select * from DeprecicaoAmortizacao where idMesRef = '+FDQ_MesRefChave.AsString);
  FDQ_Deprec.Open;
  CB_Empresa.Items.Clear;
  FDQ_Empresa.Refresh;
  FDQ_Empresa.First;
  while not FDQ_Empresa.eof do begin
    CB_Empresa.Items.Add(FDQ_EmpresaDescricao.AsString);
    FDQ_Empresa.Next;
  end;
  FDQ_Empresa.First;
  CB_Empresa.Text := FDQ_EmpresaDescricao.AsString;
  ListDeprec.Items.Clear;
  ListSelecionados.Items.Clear;
  FDQ_DepAmor.Refresh;
  FDQ_DepAmor.First;
  while not FDQ_DepAmor.Eof do begin
    ListDeprec.Items.Add(FDQ_DepAmorNome.AsString);
    FDQ_DEpAmor.Next
  end;
  ListDeprec.ItemIndex := 0;
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
  BTN_F120.Enabled:=False;
end;

procedure TFRM_Lanca_Deprec.RestartDataSet;
begin

  if CDSF010.Active then
     CDSF010.EmptyDataSet;
  CDSF010.Close;
  CDSF010.CreateDataSet;

  if CDSF120.Active then
     CDSF120.EmptyDataSet;
  CDSF120.Close;
  CDSF120.CreateDataSet;

  if CDS0500.Active then
     CDS0500.EmptyDataSet;
  CDS0500.Close;
  CDS0500.CreateDataSet;

  if CDS0150.Active then
     CDS0150.EmptyDataSet;
  CDS0150.Close;
  CDS0150.CreateDataSet;
end;

procedure TFRM_Lanca_Deprec.Insere0500;
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

procedure TFRM_Lanca_Deprec.InsereF120;
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
          i:=registrof120.Count;
          CDSF120.First;
          while not CDSF120.Eof do begin
            RegistroF120New;
            with RegistroF120.Items[i] do begin
              if CDSF120NAT_BC_CRED.Value = '09' then begin
                NAT_BC_CRED         := bccMaqCredDepreciacao;
                IDENT_BEM_IMOB      := CDSF120IDENT_BEM_IMOB.AsString;
                DESC_BEM_IMOB       := CDSF120DESC_BEM_IMOB.AsString;
              end
              else begin
                NAT_BC_CRED         := bccAmortizacaoDepreciacaoImoveis;
                IDENT_BEM_IMOB      := CDSF120IDENT_BEM_IMOB.AsString;
                DESC_BEM_IMOB       := CDSF120DESC_BEM_IMOB.AsString;
              end;
              IND_ORIG_CRED         := CDSF120IND_ORIG_CRED.AsString;
              IND_UTIL_BEM_IMOB     := CDSF120IND_UTIL_BEM_IMOB.AsString;
              VL_OPER_DEP           := CDSF120VL_OPER_DEP.Value;
              PARC_OPER_NAO_BC_CRED := CDSF120PARC_OPER_NAO_BC_CRED.Value;
              CST_PIS               := stpisOperCredExcRecTribMercInt;
              VL_BC_PIS             := CDSF120VL_BC_PIS.Value;
              ALIQ_PIS              := CDSF120ALIQ_PIS.Value;
              VL_PIS                := CDSF120VL_PIS.Value;
              CST_COFINS            := stcofinsOperCredExcRecTribMercInt;
              VL_BC_COFINS          := CDSF120VL_BC_COFINS.Value;
              ALIQ_COFINS           := CDSF120ALIQ_COFINS.Value;
              VL_COFINS             := CDSF120VL_COFINS.Value;
              COD_CTA               := CDSF120COD_CTA.AsString;
//              COD_CCUS              := CDSF120COD_CCUS.AsString;
              DESC_BEM_IMOB         := CDSF120DESC_BEM_IMOB.AsString;
            end;
            i:=(i+1);
            CDSF120.Next;
          end;
        end;
      end;
  end;
end;

end.
