unit U_LimpaCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls, ACBrEPCBlocos, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFRM_LimpaCFOP = class(TForm)
    GroupBox1: TGroupBox;
    CB5152: TCheckBox;
    CB5557: TCheckBox;
    CB5929: TCheckBox;
    CB5915: TCheckBox;
    CB5916: TCheckBox;
    BTN_Marca: TButton;
    BTN_Desmarca: TButton;
    BTN_Executar: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure BTN_DesmarcaClick(Sender: TObject);
    procedure CB5152Click(Sender: TObject);
    procedure CB5557Click(Sender: TObject);
    procedure CB5915Click(Sender: TObject);
    procedure CB5916Click(Sender: TObject);
    procedure CB5929Click(Sender: TObject);
    procedure BTN_MarcaClick(Sender: TObject);
    procedure BTN_ExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LimpaCFOP: TFRM_LimpaCFOP;

implementation

{$R *.dfm}

uses U_Principal;

procedure TFRM_LimpaCFOP.BTN_DesmarcaClick(Sender: TObject);
begin
  CB5152.Checked := false; CB5557.Checked := false; CB5929.Checked := false;
  CB5915.Checked := false; CB5916.Checked := false;
  BTN_Marca.Enabled := True; BTN_Desmarca.Enabled := False;
end;

procedure TFRM_LimpaCFOP.BTN_ExecutarClick(Sender: TObject);
var
i,j,k :integer;
Total: Double;
begin
 Total := 0.00;
 with FRM_Principal.SpedPC.Bloco_C do begin
  with RegistroC001 do begin
   for i := 0 to RegistroC010.Count -1 do begin
    with RegistroC010.Items[i] do begin
     j:=0;
     k:= RegistroC100.Count -1;
     while j <= k do begin
      with RegistroC100.Items[j] do begin
       if RegistroC170.Count > 0 then begin
        if (RegistroC170.Items[0].CFOP = '5152') or (RegistroC170.Items[0].CFOP = '1152') or
           (RegistroC170.Items[0].CFOP = '5557') or (RegistroC170.Items[0].CFOP = '1557') or
          (RegistroC170.Items[0].CFOP = '5915') or (RegistroC170.Items[0].CFOP = '1915') or
         (RegistroC170.Items[0].CFOP = '5916') or (RegistroC170.Items[0].CFOP = '1916') or
        (RegistroC170.Items[0].CFOP = '5929') or (RegistroC170.Items[0].CST_PIS = stpisOutrasOperacoes) or
        (RegistroC170.Items[0].CST_PIS = stpisOutrasOperacoesEntrada) then begin
         Total := Total + VL_DOC;
         RegistroC100.Delete(j);
         j:=j-1;
        end;
       end
      end;
      j:=j+1;
      if j > RegistroC100.Count -1 then
       break;
     end;
    end;
   end;
  end;
 end;
 MessageDlg('Informações Atualizadas!!!!',mtInformation,[mbok],0);
 Edit1.text := FormatFloat('#,,,0.00',Total);
end;

procedure TFRM_LimpaCFOP.BTN_MarcaClick(Sender: TObject);
begin
  CB5152.Checked := true; CB5557.Checked := true; CB5929.Checked := true;
  CB5915.Checked := true; CB5916.Checked := true;
  BTN_Marca.Enabled := false; BTN_Desmarca.Enabled := true;
end;

procedure TFRM_LimpaCFOP.CB5152Click(Sender: TObject);
begin
  if CB5152.Checked then
    BTN_Desmarca.Enabled := True;
end;

procedure TFRM_LimpaCFOP.CB5557Click(Sender: TObject);
begin
  if CB5557.Checked then
    BTN_Desmarca.Enabled := True;
end;

procedure TFRM_LimpaCFOP.CB5915Click(Sender: TObject);
begin
  if CB5915.Enabled then
    BTN_Desmarca.Enabled := true;
end;

procedure TFRM_LimpaCFOP.CB5916Click(Sender: TObject);
begin
  if CB5916.Checked then
    BTN_Desmarca.Enabled := True;
end;

procedure TFRM_LimpaCFOP.CB5929Click(Sender: TObject);
begin
   if CB5929.Checked then
     BTN_Desmarca.Enabled := True;
end;

end.
