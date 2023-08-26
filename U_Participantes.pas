unit U_Participantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFRM_Participantes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    FDQ_Part: TFDQuery;
    FDT_Part: TFDTable;
    DS2: TDataSource;
    Panel4: TPanel;
    sb_in: TSpeedButton;
    sb_edit: TSpeedButton;
    sb_del: TSpeedButton;
    Panel3: TPanel;
    sb_save: TSpeedButton;
    sb_cancel: TSpeedButton;
    FDQ_PartChave: TFDAutoIncField;
    FDQ_PartCodigo: TStringField;
    FDQ_PartNome: TStringField;
    FDQ_PartCNPJ: TStringField;
    FDQ_PartCod_Pais: TStringField;
    FDQ_PartCod_Municipio: TStringField;
    FDQ_PartSuframa: TStringField;
    FDQ_PartLogradouro: TStringField;
    FDQ_PartNumero: TStringField;
    FDQ_PartComplemento: TStringField;
    FDQ_PartBairro: TStringField;
    FDT_PartChave: TFDAutoIncField;
    FDT_PartCodigo: TStringField;
    FDT_PartNome: TStringField;
    FDT_PartCNPJ: TStringField;
    FDT_PartCod_Pais: TStringField;
    FDT_PartCod_Municipio: TStringField;
    FDT_PartSuframa: TStringField;
    FDT_PartLogradouro: TStringField;
    FDT_PartNumero: TStringField;
    FDT_PartComplemento: TStringField;
    FDT_PartBairro: TStringField;
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
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
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
  FRM_Participantes: TFRM_Participantes;

implementation

{$R *.dfm}

uses U_DataModule;

procedure TFRM_Participantes.DBGrid1CellClick(Column: TColumn);
begin
  //FDT_Part.Locate('Chave',FDQ_PartChave.Value,[]);
end;

procedure TFRM_Participantes.sb_delClick(Sender: TObject);
begin
  If MessageDlg('Você tem certeza que deseja excluir '+FDQ_PartNome.AsString+'?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
    FDQ_Part.close;
    FDT_Part.Delete;
    FDT_Part.Close;
    FDQ_Part.Open;
    FDT_Part.Open;
    //FDT_Part.Locate('Chave',FDQ_PartChave.Value,[]);
    end;
end;

procedure TFRM_Participantes.sb_editClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Part.Edit;
  dbedit1.SetFocus;
end;

procedure TFRM_Participantes.sb_inClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  sb_save.Enabled := true;
  sb_cancel.Enabled := true;
  FDT_Part.Append;
  dbedit1.SetFocus;
end;

procedure TFRM_Participantes.sb_saveClick(Sender: TObject);
begin
   FDT_Part.post;
   panel3.Enabled := false;
   panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Part.Refresh;
end;

procedure TFRM_Participantes.sb_cancelClick(Sender: TObject);
begin
   FDT_Part.Cancel;
   panel3.Enabled := false;
   Panel4.Enabled := true;
   sb_save.Enabled := false;
   sb_cancel.Enabled := false;
   FDQ_Part.Refresh;
end;

end.
