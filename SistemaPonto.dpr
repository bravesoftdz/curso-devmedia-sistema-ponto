program SistemaPonto;

uses
  Vcl.Forms,
  uPrincipal in 'src\uPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema de Ponto';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
