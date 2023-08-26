unit U_Contas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFRM_Contas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    FDQ_Cont: TFDQuery;
    FDT_Cont: TFDTable;
    DS2: TDataSource;
    Panel4: TPanel;
    sb_in: TSpeedButton;
    sb_edit: TSpeedButton;
    sb_del: TSpeedButton;
    Panel3: TPanel;
    sb_save: TSpeedButton;
    sb_cancel: TSpeedButton;
    FDQ_ContChave: TFDAutoIncField;
    FDQ_ContCodigo: TStringField;
    FDQ_ContNome: TStringField;
    FDQ_ContTipo: TStringField;
    FDQ_ContNatureza: TStringField;
    FDQ_ContNivel: TStringField;
    FDT_ContChave: TFDAutoIncField;
    FDT_ContCodigo: TStringField;
    FDT_ContNome: TStringField;
    FDT_ContTipo: TStringField;
    FDT_ContNatureza: TStringField;
    FDT_ContNivel: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    FDQ_ContData_Alt: TSQLTimeStampField;
    FDT_ContData_Alt: TSQLTimeStampField;
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
  FRM_Contas: TFRM_Contas;

implementation

{$R *.dfm}

uses U_DataModule;

procedure TFRM_Contas.DBGrid1CellClick(Column: TColumn);
begin
  FDT_Cont.Locate('Chave',FDQ_ContChave.Value,[]);
end;

procedure TFRM_Contas.sb_delClick(Sender: TObject);
begin
  If MessageDlg('Você tem certeza que deseja excluir '+FDQ_ContNome.AsString+'?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
    FDQ_Cont.close;
    FDT_Cont.Delete;
    FDT_Cont.Close;
    FDQ_Cont.Open;
    FDT_Cont.Open;
    FDT_Cont.Locate('Chave',FDQ_ContChave.Value,[]);
    end;
end;

procedure TFRM_Contas.sb_editClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Cont.Edit;
  dbedit1.SetFocus;
end;

procedure TFRM_Contas.sb_inClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Cont.Append;
  dbedit1.SetFocus;
end;

procedure TFRM_Contas.sb_saveClick(Sender: TObject);
begin
   FDT_Cont.post;
   panel3.Enabled := false;
   panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Cont.Refresh;
end;

procedure TFRM_Contas.sb_cancelClick(Sender: TObject);
begin
   FDT_Cont.Cancel;
   panel3.Enabled := false;
   Panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Cont.Refresh;
end;

end.
