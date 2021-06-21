object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 303
  ClientWidth = 516
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
  object lblColunas: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTabelas: TLabel
    Left = 152
    Top = 5
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lblCondicoes: TLabel
    Left = 296
    Top = 5
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSQLGerado: TLabel
    Left = 8
    Top = 184
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object mmColunas: TMemo
    Left = 8
    Top = 32
    Width = 119
    Height = 134
    TabOrder = 0
  end
  object mmTabelas: TMemo
    Left = 152
    Top = 32
    Width = 119
    Height = 134
    TabOrder = 1
  end
  object mmCondicoes: TMemo
    Left = 296
    Top = 32
    Width = 119
    Height = 134
    TabOrder = 2
  end
  object mmSQLGerado: TMemo
    Left = 8
    Top = 203
    Width = 499
    Height = 89
    TabOrder = 3
  end
  object btnGerarSQL: TButton
    Left = 432
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = btnGerarSQLClick
  end
end
