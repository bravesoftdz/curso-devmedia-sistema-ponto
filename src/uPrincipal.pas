unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ImgList;

type
  TForm1 = class(TForm)
    mnuPrincipal: TMainMenu;
    mniArquivo: TMenuItem;
    mniNovo: TMenuItem;
    mniPessoa: TMenuItem;
    mniPonto: TMenuItem;
    N1: TMenuItem;
    mniSair: TMenuItem;
    mniFerramentas: TMenuItem;
    mniAjuda: TMenuItem;
    mniSobre: TMenuItem;
    mniBancoDados: TMenuItem;
    mniJanela: TMenuItem;
    mniCascata: TMenuItem;
    mniHorizontal: TMenuItem;
    mniVertical: TMenuItem;
    mniFeriado: TMenuItem;
    mniAjustePonto: TMenuItem;
    imgPrincipal: TImageList;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  Caption := Application.Title;
end;

end.