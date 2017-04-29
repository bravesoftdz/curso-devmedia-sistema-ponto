unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ImgList, System.ImageList;

type
  TfrmPrincipal = class(TForm)
    imgPrincipal: TImageList;
    mnuPrincipal: TMainMenu;
    mniArquivo: TMenuItem;
    mniNovo: TMenuItem;
    mniPessoa: TMenuItem;
    mniPonto: TMenuItem;
    mniFeriado: TMenuItem;
    N1: TMenuItem;
    mniSair: TMenuItem;
    mniJanela: TMenuItem;
    mniCascata: TMenuItem;
    mniHorizontal: TMenuItem;
    mniVertical: TMenuItem;
    mniFerramentas: TMenuItem;
    mniBancoDados: TMenuItem;
    mniAjustePonto: TMenuItem;
    mniAjuda: TMenuItem;
    mniSobre: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mniSairClick(Sender: TObject);
    procedure mniSobreClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uSobre;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Caption := Application.Title;
end;

procedure TfrmPrincipal.mniSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.mniSobreClick(Sender: TObject);
begin
  frmSobre := TfrmSobre.Create(Application);
  try
    frmSobre.ShowModal;
  finally
    frmSobre.Free;
  end;
end;

end.
