object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 378
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 8
    Width = 262
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1086#1083#1073#1094#1086#1074
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 448
    Top = 80
    Width = 231
    Height = 22
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SG1: TStringGrid
    Left = 16
    Top = 8
    Width = 417
    Height = 209
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    OnClick = SG1Click
  end
  object Button1: TButton
    Left = 16
    Top = 248
    Width = 153
    Height = 65
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Cols: TEdit
    Left = 448
    Top = 39
    Width = 193
    Height = 21
    TabOrder = 2
    OnChange = ColsChange
  end
  object Rows: TEdit
    Left = 448
    Top = 108
    Width = 193
    Height = 21
    TabOrder = 3
    OnChange = RowsChange
  end
  object Computing: TButton
    Left = 175
    Top = 248
    Width = 154
    Height = 65
    Caption = 'Computing'
    TabOrder = 4
    OnClick = ComputingClick
  end
end
