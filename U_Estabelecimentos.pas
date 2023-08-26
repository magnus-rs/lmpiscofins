unit U_Estabelecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFRM_Estabelecimentos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    FDQ_Estab: TFDQuery;
    FDT_Estab: TFDTable;
    DS2: TDataSource;
    FDT_Estabchave: TIntegerField;
    FDT_Estabcnpj: TStringField;
    FDT_Estabrazao_social: TStringField;
    FDT_Estabdescricao: TStringField;
    Panel4: TPanel;
    sb_in: TSpeedButton;
    sb_edit: TSpeedButton;
    sb_del: TSpeedButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    sb_save: TSpeedButton;
    sb_cancel: TSpeedButton;
    FDQ_EstabChave: TFDAutoIncField;
    FDQ_EstabCNPJ: TStringField;
    FDQ_EstabRazao_Social: TStringField;
    FDQ_EstabDescricao: TStringField;
    procedure sb_inClick(Sender: TObject);
    procedure sb_saveClick(Sender: TObject);
    procedure sb_cancelClick(Sender: TObject);
    procedure sb_editClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sb_delClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Estabelecimentos: TFRM_Estabelecimentos;

implementation

{$R *.dfm}

uses U_DataModule;

procedure TFRM_Estabelecimentos.DBGrid1CellClick(Column: TColumn);
begin
  FDT_Estab.Locate('Chave',FDQ_EstabChave.Value,[]);
end;

procedure TFRM_Estabelecimentos.sb_delClick(Sender: TObject);
begin
  If MessageDlg('Você tem certeza que deseja excluir '+FDQ_EstabDescricao.Text+'?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
    FDQ_Estab.close;
    FDT_Estab.Delete;
    FDT_Estab.Close;
    FDQ_Estab.Open;
    FDT_Estab.Open;
    FDT_Estab.Locate('Chave',FDQ_EstabChave.Value,[]);
    end;
end;

procedure TFRM_Estabelecimentos.sb_editClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Estab.Edit;
  dbedit1.SetFocus;
end;

procedure TFRM_Estabelecimentos.sb_inClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Estab.Append;
  dbedit1.SetFocus;
end;

procedure TFRM_Estabelecimentos.sb_saveClick(Sender: TObject);
begin
   FDT_Estab.post;
   panel3.Enabled := false;
   panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Estab.Refresh;
end;

procedure TFRM_Estabelecimentos.sb_cancelClick(Sender: TObject);
begin
   FDT_Estab.Cancel;
   panel3.Enabled := false;
   Panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Estab.Refresh;
end;

end.
