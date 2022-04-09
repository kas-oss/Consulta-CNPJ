object frmConsultaCNPJ: TfrmConsultaCNPJ
  Left = 0
  Top = 0
  Caption = 'Consulta CNPJ'
  ClientHeight = 611
  ClientWidth = 468
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 611
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitHeight = 374
    object pTopo: TPanel
      Left = 0
      Top = 0
      Width = 468
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = 14810804
      ParentBackground = False
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 121
        Height = 33
        Align = alLeft
        Color = 43520
        ParentBackground = False
        TabOrder = 0
        object btnNovaConsulta: TSpeedButton
          Left = 1
          Top = 1
          Width = 119
          Height = 31
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Nova Consulta'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnNovaConsultaClick
          ExplicitLeft = 80
          ExplicitWidth = 72
        end
      end
    end
    object CardPanel: TCardPanel
      Left = 0
      Top = 33
      Width = 468
      Height = 578
      Align = alClient
      ActiveCard = cardResultadoEdt
      BevelOuter = bvNone
      Caption = 'CardPanel'
      TabOrder = 1
      ExplicitHeight = 341
      object cardConsulta: TCard
        Left = 0
        Top = 0
        Width = 468
        Height = 578
        Caption = 'Consulta'
        CardIndex = 0
        TabOrder = 0
        ExplicitHeight = 341
        object Label1: TLabel
          Left = 64
          Top = 104
          Width = 341
          Height = 14
          Caption = 'Informe o n'#250'mero de CNPJ da empresa e clique em "Consultar".'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2894892
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 48
          Top = 151
          Width = 34
          Height = 14
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2894892
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel5: TPanel
          Left = 48
          Top = 168
          Width = 369
          Height = 28
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Panel4: TPanel
            Left = 281
            Top = 0
            Width = 88
            Height = 28
            Align = alRight
            Color = 43520
            ParentBackground = False
            TabOrder = 0
            object btnConsultarCnpj: TSpeedButton
              Left = 1
              Top = 1
              Width = 86
              Height = 26
              Cursor = crHandPoint
              Align = alClient
              Caption = 'Consultar'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Roboto'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnConsultarCnpjClick
              ExplicitLeft = 80
              ExplicitWidth = 72
              ExplicitHeight = 31
            end
          end
          object Panel6: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 277
            Height = 28
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 4
            Margins.Bottom = 0
            Align = alClient
            BevelOuter = bvNone
            BorderStyle = bsSingle
            Caption = 'Panel6'
            TabOrder = 1
            object edtCnpj: TEdit
              AlignWithMargins = True
              Left = 4
              Top = 3
              Width = 265
              Height = 18
              Margins.Left = 4
              Margins.Right = 4
              Align = alClient
              BevelInner = bvNone
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '38729940000199'
            end
          end
        end
      end
      object cardResultado: TCard
        Left = 0
        Top = 0
        Width = 468
        Height = 578
        Caption = 'Resultado'
        CardIndex = 1
        TabOrder = 1
        ExplicitHeight = 341
        object Memo: TMemo
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 460
          Height = 570
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 333
        end
      end
      object cardResultadoEdt: TCard
        Left = 0
        Top = 0
        Width = 468
        Height = 578
        Caption = 'ResultadoEdt'
        CardIndex = 2
        TabOrder = 2
        ExplicitLeft = -1
        ExplicitTop = 5
        ExplicitHeight = 341
        object Label3: TLabel
          Left = 8
          Top = 21
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
        end
        object Label4: TLabel
          Left = 8
          Top = 61
          Width = 89
          Height = 13
          Caption = 'Nome Empresarial:'
        end
        object Label5: TLabel
          Left = 8
          Top = 101
          Width = 75
          Height = 13
          Caption = 'Nome Fantasia:'
        end
        object Label6: TLabel
          Left = 8
          Top = 160
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label7: TLabel
          Left = 167
          Top = 21
          Width = 24
          Height = 13
          Caption = 'Tipo:'
        end
        object Label8: TLabel
          Left = 328
          Top = 21
          Width = 88
          Height = 13
          Caption = 'Data de Abertura:'
        end
        object Label9: TLabel
          Left = 385
          Top = 101
          Width = 30
          Height = 13
          Caption = 'Porte:'
        end
        object Label10: TLabel
          Left = 71
          Top = 160
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label11: TLabel
          Left = 8
          Top = 143
          Width = 91
          Height = 13
          Caption = 'Atividade Principal:'
        end
        object Label14: TLabel
          Left = 8
          Top = 202
          Width = 115
          Height = 13
          Caption = 'Atividades Secund'#225'rias:'
        end
        object Label15: TLabel
          Left = 8
          Top = 302
          Width = 87
          Height = 13
          Caption = 'Natureza Jur'#237'dica:'
        end
        object Label16: TLabel
          Left = 8
          Top = 219
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label17: TLabel
          Left = 71
          Top = 219
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Edit1: TEdit
          Left = 8
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 8
          Top = 76
          Width = 449
          Height = 21
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 8
          Top = 116
          Width = 371
          Height = 21
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 8
          Top = 175
          Width = 57
          Height = 21
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 167
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 4
        end
        object Edit6: TEdit
          Left = 328
          Top = 36
          Width = 129
          Height = 21
          TabOrder = 5
        end
        object Edit7: TEdit
          Left = 385
          Top = 116
          Width = 72
          Height = 21
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 71
          Top = 175
          Width = 386
          Height = 21
          TabOrder = 7
        end
        object Edit10: TEdit
          Left = 8
          Top = 318
          Width = 449
          Height = 21
          TabOrder = 8
        end
        object ListBox1: TListBox
          Left = 8
          Top = 235
          Width = 449
          Height = 61
          ItemHeight = 13
          TabOrder = 9
        end
      end
    end
  end
  object RESTClient: TRESTClient
    Params = <>
    Left = 144
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 192
  end
  object RESTResponse: TRESTResponse
    Left = 248
  end
end
