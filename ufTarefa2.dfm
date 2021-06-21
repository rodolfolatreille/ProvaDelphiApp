object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 178
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gpbThr1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 441
    Height = 67
    Align = alTop
    Caption = 'Thread 1'
    TabOrder = 0
    object lblThr1TempoSleep: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 61
      Height = 21
      Align = alLeft
      Caption = 'Tempo Sleep'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object pgbThr1: TProgressBar
      AlignWithMargins = True
      Left = 5
      Top = 45
      Width = 431
      Height = 17
      Align = alBottom
      TabOrder = 0
    end
    object edtThr1TempoSleep: TEdit
      AlignWithMargins = True
      Left = 72
      Top = 18
      Width = 50
      Height = 21
      Align = alLeft
      NumbersOnly = True
      TabOrder = 1
    end
  end
  object gpbThr2: TGroupBox
    Left = 0
    Top = 73
    Width = 447
    Height = 67
    Align = alTop
    Caption = 'Thread 2'
    TabOrder = 1
    object lblThr2TempoSleep: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 61
      Height = 21
      Align = alLeft
      Caption = 'Tempo Sleep'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object pgbThr2: TProgressBar
      AlignWithMargins = True
      Left = 5
      Top = 45
      Width = 437
      Height = 17
      Align = alBottom
      TabOrder = 0
    end
    object edtThr2TempoSleep: TEdit
      AlignWithMargins = True
      Left = 72
      Top = 18
      Width = 50
      Height = 21
      Align = alLeft
      NumbersOnly = True
      TabOrder = 1
    end
  end
  object btnThrIniciar: TButton
    Left = 364
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 2
    OnClick = btnThrIniciarClick
  end
end
