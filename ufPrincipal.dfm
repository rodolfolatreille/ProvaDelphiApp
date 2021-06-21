object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Prova Delphi'
  ClientHeight = 346
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 304
    Top = 176
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object mnuTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = mnuTarefa1Click
      end
      object mnuTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = mnuTarefa2Click
      end
      object mnuTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = mnuTarefa3Click
      end
    end
  end
end
