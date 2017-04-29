program SistemaPonto;

uses
  Vcl.Forms,
  uPrincipal in 'src\uPrincipal.pas' {frmPrincipal},
  uSobre in 'src\uSobre.pas' {frmSobre},
  uFuncoes in 'src\uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema de Ponto';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
