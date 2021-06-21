unit ufPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TfPrincipal = class(TForm)
    MainMenu: TMainMenu;
    arefas1: TMenuItem;
    mnuTarefa1: TMenuItem;
    mnuTarefa2: TMenuItem;
    mnuTarefa3: TMenuItem;
    procedure mnuTarefa1Click(Sender: TObject);
    procedure mnuTarefa2Click(Sender: TObject);
    procedure mnuTarefa3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TfPrincipal.mnuTarefa1Click(Sender: TObject);
begin
   with TfTarefa1.Create(Self) do Show;
end;

procedure TfPrincipal.mnuTarefa2Click(Sender: TObject);
begin
   with TfTarefa2.Create(Self) do Show;
end;

procedure TfPrincipal.mnuTarefa3Click(Sender: TObject);
begin
   with TfTarefa3.Create(Self) do Show;
end;

end.
