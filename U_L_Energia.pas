unit U_L_Energia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, ACBrEPCBlocos;

type
  TFRM_Energia_Lancamento = class(TForm)
    FDQ_MesRef: TFDQuery;
    FDQ_MesRefChave: TFDAutoIncField;
    FDQ_MesRefMes_Ref: TStringField;
    Panel1: TPanel;
    CB_MesRef: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    CB_Empresa: TComboBox;
    FDQ_Empresa: TFDQuery;
    FDQ_EmpresaChave: TFDAutoIncField;
    FDQ_EmpresaCNPJ: TStringField;
    FDQ_EmpresaRazao_Social: TStringField;
    FDQ_EmpresaDescricao: TStringField;
    BTN_Localizar: TButton;
    DBGrid1: TDBGrid;
    FDQ_Energia: TFDQuery;
    DS_Energia: TDataSource;
    FDQ_EnergiaChave: TFDAutoIncField;
    FDQ_EnergiaidEstabelecimento: TIntegerField;
    FDQ_EnergiaidMesRef: TIntegerField;
    FDQ_EnergiaPercentPis: TFloatField;
    FDQ_EnergiaPercentCofins: TFloatField;
    BTN_Sped: TButton;
    DGC500: TDBGrid;
    DGC501: TDBGrid;
    DGC505: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CDS_C500: TClientDataSet;
    CDS_C501: TClientDataSet;
    CDS_C505: TClientDataSet;
    CDS_C500CNPJ: TStringField;
    CDS_C500VL_PIS: TCurrencyField;
    CDS_C500VL_COFINS: TCurrencyField;
    CDS_C501CNPJ: TStringField;
    CDS_C501VL_BC_PIS: TCurrencyField;
    CDS_C501VL_PIS: TCurrencyField;
    CDS_C505CNPJ: TStringField;
    CDS_C505VL_BC_COFINS: TCurrencyField;
    CDS_C505VL_COFINS: TCurrencyField;
    DS_C500: TDataSource;
    DS_C501: TDataSource;
    DS_C505: TDataSource;
    BTN_Efetiva_Sped: TButton;
    CDS_C500VL_DOC: TCurrencyField;
    BTN_Atualiza_Calculos: TButton;
    FDQ_EnergiaValorTotal: TBCDField;
    FDQ_EnergiaRateio: TBCDField;
    FDQ_EnergiaBaseCalculo: TBCDField;
    FDQ_EnergiaValorPis: TBCDField;
    FDQ_EnergiaValorCofins: TBCDField;
    procedure FormShow(Sender: TObject);
    procedure CB_MesRefChange(Sender: TObject);
    procedure CB_EmpresaChange(Sender: TObject);
    procedure BTN_LocalizarClick(Sender: TObject);
    procedure BTN_SpedClick(Sender: TObject);
    procedure RestartDataSet;
    procedure EfetivaSped;
    procedure BTN_Atualiza_CalculosClick(Sender: TObject);
    procedure BTN_Efetiva_SpedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Energia_Lancamento: TFRM_Energia_Lancamento;

implementation

{$R *.dfm}

uses U_Principal, U_DataModule;

procedure TFRM_Energia_Lancamento.BTN_Atualiza_CalculosClick(Sender: TObject);
begin
 FDQ_Energia.First;
 CDS_C500.First;
 CDS_C501.First;
 CDS_C505.First;

 CDS_C500.Edit;
 CDS_C500VL_PIS.Value := FDQ_EnergiaValorPis.Value;
 CDS_C500VL_COFINS.Value := FDQ_EnergiaValorCofins.Value;
 CDS_C500.Post;

 CDS_C501.edit;
 CDS_C501VL_BC_PIS.Value := FDQ_EnergiaBaseCalculo.Value;
 CDS_C501VL_PIS.Value := FDQ_EnergiaValorPis.Value;
 CDS_C501.Post;

 CDS_C505.Edit;
 CDS_C505VL_BC_COFINS.Value := FDQ_EnergiaBaseCalculo.Value;
 CDS_C505VL_COFINS.Value := FDQ_EnergiaValorCofins.Value;
 CDS_C505.Post;

 BTN_Atualiza_Calculos.Enabled := False;
 BTN_Sped.Enabled := False;
 If MessageDlg('Deseja efetivar as alterações no arquivo do SPED?',mtConfirmation,[mbyes,mbno],0)=mrno then
   BTN_Efetiva_Sped.Enabled := True
 else
   EfetivaSped;
end;

procedure TFRM_Energia_lancamento.EfetivaSped;
var
 I, J:integer;
begin
  with FRM_Principal.SpedPC.Bloco_C.RegistroC001 do begin
   for I := 0 to RegistroC010.Count - 1 do begin
     with RegistroC010.Items[I] do begin
      if CNPJ = FDQ_EmpresaCNPJ.Text then
       for J := 0 to RegistroC500.Count - 1 do begin
         with RegistroC500.Items[J] do begin
          CDS_C500.First;
          VL_DOC    := CDS_C500VL_DOC.Value ;
          VL_PIS    := CDS_C500VL_PIS.Value ;
          VL_COFINS := CDS_C500VL_COFINS.Value ;
          with RegistroC501.Items[0] do begin
            CDS_C501.First;
            CST_PIS   := stpisOperCredExcRecTribMercInt;
            VL_BC_PIS := CDS_C501VL_BC_PIS.Value ;
            ALIQ_PIS  := 1.65 ;
            VL_PIS    := CDS_C501VL_PIS.Value ;
          end;
          with RegistroC505.Items[0] do begin
            CDS_C505.First;
            CST_COFINS   := stcofinsOperCredExcRecTribMercInt;
            VL_BC_COFINS := CDS_C505VL_BC_COFINS.Value ;
            ALIQ_COFINS  := 7.6;
            VL_COFINS    := CDS_C505VL_COFINS.Value ;
          end;
          BTN_Atualiza_calculos.Enabled := False;
          BTN_Efetiva_Sped.Enabled := False;
          RestartDataSet;
         end;
       end;
     end;
   end;
  end;
end;

procedure TFRM_Energia_Lancamento.BTN_Efetiva_SpedClick(Sender: TObject);
begin
  EfetivaSped;
  RestartDataSet;
end;

procedure TFRM_Energia_Lancamento.BTN_LocalizarClick(Sender: TObject);
begin
  if not FDQ_Empresa.Locate('Descricao',CB_Empresa.Text,[]) then begin
    BTN_Sped.Enabled := False;
    BTN_Atualiza_Calculos.Enabled := False;
    exit;
  end;
  if not FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]) then begin
    BTN_Sped.Enabled := False;
    BTN_Atualiza_Calculos.Enabled := False;
    exit;
  end;
  FDQ_Energia.Active := False;
  FDQ_Energia.SQL.Clear;
  FDQ_Energia.SQL.Add('select * from Energia where idMesRef = '+ FDQ_MesRefChave.AsString +' and idEstabelecimento = '+ FDQ_EmpresaChave.AsString);
  FDQ_Energia.Active := True;
  BTN_Sped.Enabled := True;
end;

procedure TFRM_Energia_Lancamento.BTN_SpedClick(Sender: TObject);
var
 I, J:integer;
 vMesRef: string;
begin
 RestartDataSet;
 CDS_C500.DisableControls;
 CDS_C501.DisableControls;
 CDS_C505.DisableControls;
 BTN_Atualiza_Calculos.Enabled := False;
 FDQ_Empresa.Locate('Descricao',CB_Empresa.Text,[]);
 vMesRef := FormatDateTime('mmyyyy',FRM_Principal.SpedPC.Bloco_0.Registro0000.DT_INI);
 if CB_MesRef.Text = vMesRef then begin
  with FRM_Principal.SpedPC.Bloco_C.RegistroC001 do begin
   for I := 0 to RegistroC010.Count - 1 do begin
     with RegistroC010.Items[I] do begin
      if CNPJ = FDQ_EmpresaCNPJ.Text then
       for J := 0 to RegistroC500.Count - 1 do begin
         with RegistroC500.Items[J] do begin
          CDS_C500.Append;
          CDS_C500CNPJ.Value := FDQ_EmpresaCNPJ.Value;
          CDS_C500VL_DOC.Value := VL_DOC;
          CDS_C500VL_PIS.Value := VL_PIS;
          CDS_C500VL_COFINS.Value := VL_COFINS;
          CDS_C500.Post;
          with RegistroC501.Items[0] do begin
            CDS_C501.Append;
            CDS_C501CNPJ.Value := FDQ_EmpresaCNPJ.Value;
            CDS_C501VL_BC_PIS.Value := VL_BC_PIS;
            CDS_C501VL_PIS.Value := VL_PIS;
            CDS_C501.post;
          end;
          with RegistroC505.Items[0] do begin
            CDS_C505.Append;
            CDS_C505CNPJ.Value := FDQ_EmpresaCNPJ.Value;
            CDS_C505VL_BC_COFINS.Value := VL_BC_COFINS;
            CDS_C505VL_COFINS.Value := VL_COFINS;
            CDS_C505.Post;
          end;
          BTN_Atualiza_calculos.Enabled := true;
         end;
       end;
     end;
   end;
  end;
 end
 else
  MessageDlg('Meses de Referência incompatíveis!',mtInformation,[mbok],0);

 CDS_C500.EnableControls;
 CDS_C501.EnableControls;
 CDS_C505.EnableControls;
end;

procedure TFRM_Energia_Lancamento.CB_EmpresaChange(Sender: TObject);
begin
  FDQ_Empresa.Locate('Descricao',CB_Empresa.Text,[]);
  if (CB_MesRef.Text <> '') and (CB_Empresa.Text <> '') then begin
    BTN_Localizar.Enabled := True;
    BTN_Atualiza_Calculos.Enabled := False;
    RestartDataSet;
  end
  else  begin
    BTN_Localizar.Enabled := False;
    BTN_Sped.Enabled := False;
    BTN_Atualiza_Calculos.Enabled := False;
  end;
  BTN_Sped.Enabled := False;
  FDQ_Energia.Active:=False;
  FDQ_Energia.SQL.Clear;
  FDQ_Energia.SQL.Add('select * from Energia where idMesRef = 0');
  FDQ_Energia.Active := True;
end;

procedure TFRM_Energia_Lancamento.CB_MesRefChange(Sender: TObject);
begin
  FDQ_MesRef.Locate('Mes_Ref',CB_MesRef.Text,[]);
  if (CB_Empresa.Text <> '') and (CB_MesRef.Text <> '') then begin
     BTN_Localizar.Enabled := True;
     BTN_Atualiza_Calculos.Enabled := False;
     RestartDataSet;
  end
  else begin
     BTN_Localizar.Enabled := False;
     BTN_Sped.Enabled := False;
     BTN_Atualiza_Calculos.Enabled := False;
  end;
  BTN_Sped.Enabled := False;
  FDQ_Energia.Active:=False;
  FDQ_Energia.SQL.Clear;
  FDQ_Energia.SQL.Add('select * from Energia where idMesRef = 0');
  FDQ_Energia.Active := True;
end;

procedure TFRM_Energia_Lancamento.FormShow(Sender: TObject);
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
  CB_Empresa.Items.Clear;
  FDQ_Empresa.Refresh;
  FDQ_Empresa.First;
  while not FDQ_Empresa.eof do begin
    CB_Empresa.Items.Add(FDQ_EmpresaDescricao.AsString);
    FDQ_Empresa.Next;
  end;
  FDQ_Energia.Active:=False;
  FDQ_Energia.SQL.Clear;
  FDQ_Energia.SQL.Add('select * from Energia where idMesRef = 0');
  FDQ_Energia.Active := True;
  RestartDataSet;
end;

procedure TFRM_Energia_Lancamento.RestartDataSet;
begin
  if CDS_C500.Active then
     CDS_C500.EmptyDataSet;
  CDS_C500.Close;
  CDS_C500.CreateDataSet;
  if CDS_C501.Active then
     CDS_C501.EmptyDataSet;
  CDS_C501.Close;
  CDS_C501.CreateDataSet;
  if CDS_C505.Active then
     CDS_C505.EmptyDataSet;
  CDS_C505.Close;
  CDS_C505.CreateDataSet;
end;

end.
