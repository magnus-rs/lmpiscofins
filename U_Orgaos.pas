unit U_Orgaos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFRM_Orgaos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    FDQ_Orgao: TFDQuery;
    FDT_Orgao: TFDTable;
    DS2: TDataSource;
    Panel4: TPanel;
    sb_in: TSpeedButton;
    sb_edit: TSpeedButton;
    sb_del: TSpeedButton;
    Panel3: TPanel;
    sb_save: TSpeedButton;
    sb_cancel: TSpeedButton;
    FDT_OrgaoChave: TFDAutoIncField;
    FDT_OrgaoNome: TStringField;
    FDT_OrgaoCNPJ: TStringField;
    FDQ_OrgaoChave: TFDAutoIncField;
    FDQ_OrgaoNome: TStringField;
    FDQ_OrgaoCNPJ: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
  FRM_Orgaos: TFRM_Orgaos;

implementation

{$R *.dfm}

uses U_DataModule;

procedure TFRM_Orgaos.DBGrid1CellClick(Column: TColumn);
begin
  FDT_Orgao.Locate('Chave',FDQ_OrgaoChave.Value,[]);
end;

procedure TFRM_Orgaos.sb_delClick(Sender: TObject);
begin
  If MessageDlg('Você tem certeza que deseja excluir '+FDQ_OrgaoNome.AsString+'?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
    FDQ_Orgao.close;
    FDT_Orgao.Delete;
    FDT_Orgao.Close;
    FDQ_Orgao.Open;
    FDT_Orgao.Open;
    FDT_Orgao.Locate('Chave',FDQ_OrgaoChave.Value,[]);
    end;
end;

procedure TFRM_Orgaos.sb_editClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Orgao.Edit;
  dbedit1.SetFocus;
end;

procedure TFRM_Orgaos.sb_inClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Orgao.Append;
  dbedit1.SetFocus;
end;

procedure TFRM_Orgaos.sb_saveClick(Sender: TObject);
begin
   FDT_Orgao.post;
   panel3.Enabled := false;
   panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Orgao.Refresh;
end;

procedure TFRM_Orgaos.sb_cancelClick(Sender: TObject);
begin
   FDT_Orgao.Cancel;
   panel3.Enabled := false;
   Panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Orgao.Refresh;
end;

end.
