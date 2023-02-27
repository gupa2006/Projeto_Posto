program Projeto_Posto;

uses
  Vcl.Forms,
  Login in 'Login.pas' {frmLogin},
  Conexao in 'Conexao.pas' {frmConecta},
  Principal in 'Principal.pas' {frmPrincipal},
  Abastecer in 'Abastecer.pas' {frmAbastecer},
  ControllerAbastecer in 'ControllerAbastecer.pas' {frmControllerAbastecer},
  DaoAbastecimento in 'DaoAbastecimento.pas' {frmDaoAbastecimento},
  Tanque in 'Tanque.pas' {frmTanque},
  ControllerTanque in 'ControllerTanque.pas' {frmControllerTanque},
  DaoTanque in 'DaoTanque.pas' {frmDaoTanque},
  Imposto in 'Imposto.pas' {frmImposto},
  Relatorio in 'Relatorio.pas' {frmRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmConecta, frmConecta);
  Application.CreateForm(TfrmImposto, frmImposto);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  Application.Run;
end.
