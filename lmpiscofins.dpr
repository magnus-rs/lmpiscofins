program lmpiscofins;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {FRM_Principal},
  U_DataModule in 'U_DataModule.pas' {DataModule1: TDataModule},
  U_Estabelecimentos in 'U_Estabelecimentos.pas' {FRM_Estabelecimentos},
  U_Participantes in 'U_Participantes.pas' {FRM_Participantes},
  U_Contas in 'U_Contas.pas' {FRM_Contas},
  U_Planilhas in 'U_Planilhas.pas' {FRM_Planilhas},
  U_Energia in 'U_Energia.pas' {FRM_Energia},
  U_Terraco in 'U_Terraco.pas' {FRM_Terraco},
  U_Locacoes in 'U_Locacoes.pas' {FRM_Locacoes},
  U_ReceitasFin in 'U_ReceitasFin.pas' {FRM_ReceitasFin},
  U_DeprecAmort in 'U_DeprecAmort.pas' {FRM_DeprecAmort},
  U_Orgaos in 'U_Orgaos.pas' {FRM_Orgaos},
  U_Retencao in 'U_Retencao.pas' {FRM_Retencao},
  U_L_Energia in 'U_L_Energia.pas' {FRM_Energia_Lancamento},
  U_Lanca_Terraco in 'U_Lanca_Terraco.pas' {FRM_Lanca_Terraco},
  U_Lanca_Maquinas in 'U_Lanca_Maquinas.pas' {FRM_Lanca_Maquinas},
  U_Lanca_Deprec in 'U_Lanca_Deprec.pas' {FRM_Lanca_Deprec},
  U_Lanca_Receitas in 'U_Lanca_Receitas.pas' {FRM_Lanca_Receitas},
  U_Lanca_Retencao in 'U_Lanca_Retencao.pas' {FRM_Lanca_Retencao},
  U_Perse in 'U_Perse.pas' {FRM_Perse},
  U_LimpaCFOP in 'U_LimpaCFOP.pas' {FRM_LimpaCFOP},
  U_Corre��es in 'U_Corre��es.pas' {FRM_Correcoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_Principal, FRM_Principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFRM_Estabelecimentos, FRM_Estabelecimentos);
  Application.CreateForm(TFRM_Participantes, FRM_Participantes);
  Application.CreateForm(TFRM_Contas, FRM_Contas);
  Application.CreateForm(TFRM_Planilhas, FRM_Planilhas);
  Application.CreateForm(TFRM_Energia, FRM_Energia);
  Application.CreateForm(TFRM_Terraco, FRM_Terraco);
  Application.CreateForm(TFRM_Locacoes, FRM_Locacoes);
  Application.CreateForm(TFRM_ReceitasFin, FRM_ReceitasFin);
  Application.CreateForm(TFRM_DeprecAmort, FRM_DeprecAmort);
  Application.CreateForm(TFRM_Orgaos, FRM_Orgaos);
  Application.CreateForm(TFRM_Retencao, FRM_Retencao);
  Application.CreateForm(TFRM_Energia_Lancamento, FRM_Energia_Lancamento);
  Application.CreateForm(TFRM_Lanca_Terraco, FRM_Lanca_Terraco);
  Application.CreateForm(TFRM_Lanca_Maquinas, FRM_Lanca_Maquinas);
  Application.CreateForm(TFRM_Lanca_Deprec, FRM_Lanca_Deprec);
  Application.CreateForm(TFRM_Lanca_Receitas, FRM_Lanca_Receitas);
  Application.CreateForm(TFRM_Lanca_Retencao, FRM_Lanca_Retencao);
  Application.CreateForm(TFRM_Perse, FRM_Perse);
  Application.CreateForm(TFRM_LimpaCFOP, FRM_LimpaCFOP);
  Application.CreateForm(TFRM_Correcoes, FRM_Correcoes);
  Application.Run;
end.
