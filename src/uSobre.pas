unit uSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg;

type
  TfrmSobre = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    lblSistemaOperacional: TLabel;
    lblMemorioSistema: TLabel;
    btnFechar: TBitBtn;
    Bevel2: TBevel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

uses uFuncoes;

procedure TfrmSobre.FormShow(Sender: TObject);
begin
  lblSistemaOperacional.Caption := lblSistemaOperacional.Caption +
    uFuncoes.getSistemaOperacional;

  lblMemorioSistema.Caption := lblMemorioSistema.Caption +
    IntToStr(uFuncoes.getMemoriaFisica div (1024 * 1024)) + ' MB';
end;

end.
