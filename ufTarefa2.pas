unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfTarefa2 = class(TForm)
    gpbThr1: TGroupBox;
    pgbThr1: TProgressBar;
    edtThr1TempoSleep: TEdit;
    lblThr1TempoSleep: TLabel;
    gpbThr2: TGroupBox;
    lblThr2TempoSleep: TLabel;
    pgbThr2: TProgressBar;
    edtThr2TempoSleep: TEdit;
    btnThrIniciar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnThrIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

uses uThrProcesso;

procedure TfTarefa2.btnThrIniciarClick(Sender: TObject);
var
   thr1, thr2: TProcesso;
begin
   thr1 := TProcesso.Create(True);
   thr1.Progresso := pgbThr1;
   thr1.TempoSleep := StrToIntDef(edtThr1TempoSleep.Text, 0);
   thr1.FreeOnTerminate := True;
   thr1.Resume;

   thr2 := TProcesso.Create(True);
   thr2.Progresso := pgbThr2;
   thr2.TempoSleep := StrToIntDef(edtThr2TempoSleep.Text, 0);
   thr2.FreeOnTerminate := True;
   thr2.Resume;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
