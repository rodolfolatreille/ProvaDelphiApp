unit uThrProcesso;

interface

uses
  Classes, Vcl.ComCtrls;

type
   TProcesso = class(TThread)
   private
    FTempoSleep: Integer;
    FProgresso: TProgressBar;
    procedure SetTempoSleep(const Value: Integer);
    procedure SetProgresso(const Value: TProgressBar);
   public
   protected
      procedure Execute; override;
   published
      property TempoSleep: Integer read FTempoSleep write SetTempoSleep;
      property Progresso: TProgressBar read FProgresso write SetProgresso;
   end;

implementation

uses System.SysUtils;

{ TProcesso }

procedure TProcesso.Execute;
var
   iFor: Integer;
begin
   Progresso.Max := 100;

   for iFor := 0 to 100 do
   begin
      Progresso.Position := iFor;
      Sleep(Word(FTempoSleep)); //Converte para cardinal
   end;

   inherited;
end;

procedure TProcesso.SetProgresso(const Value: TProgressBar);
begin
  FProgresso := Value;
end;

procedure TProcesso.SetTempoSleep(const Value: Integer);
begin
  FTempoSleep := Value;
end;

end.
