object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 340
  ClientWidth = 508
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 384
    Top = 236
    Width = 44
    Height = 13
    Caption = 'Total R$:'
  end
  object dbgDados: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 502
    Height = 222
    Align = alTop
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnForcarCarga: TButton
    Left = 8
    Top = 231
    Width = 75
    Height = 25
    Caption = 'For'#231'ar Carga'
    TabOrder = 1
    OnClick = btnForcarCargaClick
  end
  object btnObterTotal: TButton
    Left = 296
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 2
    OnClick = btnObterTotalClick
  end
  object edtTotal: TEdit
    Left = 384
    Top = 255
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnObterTotalDivisao: TButton
    Left = 256
    Top = 286
    Width = 115
    Height = 25
    Caption = 'Obter Total Divis'#227'o'
    TabOrder = 4
    OnClick = btnObterTotalDivisaoClick
  end
  object edtTotalDivisao: TEdit
    Left = 384
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 176
    object ClientDataSet1sss: TFloatField
      FieldName = 'sss'
    end
  end
end
