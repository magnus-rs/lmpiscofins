unit U_Planilhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFRM_Planilhas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    FDQ_Planilha: TFDQuery;
    FDT_Planilha: TFDTable;
    DS2: TDataSource;
    Panel4: TPanel;
    sb_in: TSpeedButton;
    sb_edit: TSpeedButton;
    sb_del: TSpeedButton;
    Panel3: TPanel;
    sb_save: TSpeedButton;
    sb_cancel: TSpeedButton;
    FDQ_PlanilhaChave: TFDAutoIncField;
    FDQ_PlanilhaMes_Ref: TStringField;
    FDT_PlanilhaChave: TFDAutoIncField;
    FDT_PlanilhaMes_Ref: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
  FRM_Planilhas: TFRM_Planilhas;

implementation

{$R *.dfm}

uses U_DataModule;

procedure TFRM_Planilhas.DBGrid1CellClick(Column: TColumn);
begin
  FDT_Planilha.Locate('Chave',FDQ_PlanilhaChave.Value,[]);
end;

procedure TFRM_Planilhas.sb_delClick(Sender: TObject);
begin
  If MessageDlg('Você tem certeza que deseja excluir '+FDQ_PlanilhaMes_Ref.asstring+'?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
    FDQ_Planilha.close;
    FDT_Planilha.Delete;
    FDT_Planilha.Close;
    FDQ_Planilha.Open;
    FDT_Planilha.Open;
    FDT_Planilha.Locate('Chave',FDQ_PlanilhaChave.Value,[]);
    end;
end;

procedure TFRM_Planilhas.sb_editClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Planilha.Edit;
  dbedit1.SetFocus;
end;

procedure TFRM_Planilhas.sb_inClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Planilha.Append;
  dbedit1.SetFocus;
end;

procedure TFRM_Planilhas.sb_saveClick(Sender: TObject);
begin
   FDT_Planilha.post;
   panel3.Enabled := false;
   panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Planilha.Refresh;
end;

procedure TFRM_Planilhas.sb_cancelClick(Sender: TObject);
begin
   FDT_Planilha.Cancel;
   panel3.Enabled := false;
   Panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Planilha.Refresh;
end;

end.
