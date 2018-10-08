object fraBalans: TfraBalans
  Left = 0
  Top = 0
  Width = 1028
  Height = 572
  TabOrder = 0
  object pcTeplo: TPageControl
    Left = 0
    Top = 0
    Width = 1028
    Height = 572
    ActivePage = tsSHA711
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = pcTeploChange
    object tsSHA711: TTabSheet
      Caption = #1050#1086#1083#1083#1077#1082#1090#1086#1088#1085#1072#1103' ['#1064'711]'
      ImageIndex = 7
      inline fraCollectSHA7111: TfraCollectSHA711
        Left = 0
        Top = 0
        Width = 1020
        Height = 541
        HorzScrollBar.Range = 672
        VertScrollBar.Range = 500
        Align = alClient
        AutoScroll = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        inherited OPCEdit18: TOPCEdit
          Text = 'Ppr700SSK'
          OPCTag = 'Ppr700SSK'
        end
        inherited OPCEdit21: TOPCEdit
          Text = 'Pob700SSK'
          OPCTag = 'Pob700SSK'
        end
        inherited Edit39: TEdit
          Top = 425
        end
        inherited Edit40: TEdit
          Top = 446
        end
        inherited Edit41: TEdit
          Top = 467
        end
        inherited OPCEdit4: TOPCEdit
          Top = 425
        end
        inherited OPCEdit5: TOPCEdit
          Top = 446
        end
        inherited OPCEdit11: TOPCEdit
          Top = 467
        end
      end
    end
    object tsSPT: TTabSheet
      Caption = #1050#1086#1083#1083#1077#1082#1090#1086#1088#1085#1072#1103' ['#1057#1055#1058']'
      inline fraCollectSPT1: TfraCollectSPT
        Left = 0
        Top = 0
        Width = 1069
        Height = 541
        HorzScrollBar.Range = 1224
        VertScrollBar.Range = 500
        Align = alClient
        AutoScroll = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        inherited Label1: TLabel
          Left = 8
          Top = 296
        end
        inherited Label2: TLabel
          Left = 464
          Top = 296
        end
        inherited Edit25: TEdit
          Left = 8
          Top = 27
        end
        inherited Edit26: TEdit
          Left = 8
          Top = 48
        end
        inherited Edit27: TEdit
          Left = 8
          Top = 69
        end
        inherited Edit28: TEdit
          Left = 8
          Top = 90
        end
        inherited Edit29: TEdit
          Left = 8
          Top = 111
        end
        inherited Edit30: TEdit
          Left = 8
          Top = 153
        end
        inherited Edit31: TEdit
          Left = 8
          Top = 174
        end
        inherited Edit32: TEdit
          Left = 8
          Top = 195
        end
        inherited Edit41: TEdit
          Left = 8
          Top = 216
        end
        inherited Edit100: TEdit
          Left = 8
          Top = 132
        end
        inherited OPCEdit1: TOPCEdit
          Left = 257
          Top = 48
        end
        inherited OPCEdit2: TOPCEdit
          Left = 257
          Top = 90
        end
        inherited OPCEdit3: TOPCEdit
          Left = 257
          Top = 132
        end
        inherited OPCEdit4: TOPCEdit
          Left = 257
          Top = 174
        end
        inherited OPCEdit5: TOPCEdit
          Left = 257
          Top = 216
        end
        inherited OPCEdit6: TOPCEdit
          Left = 326
          Top = 48
        end
        inherited OPCEdit10: TOPCEdit
          Left = 326
          Top = 90
        end
        inherited OPCEdit12: TOPCEdit
          Left = 326
          Top = 132
        end
        inherited OPCEdit17: TOPCEdit
          Left = 326
          Top = 174
        end
        inherited OPCEdit26: TOPCEdit
          Left = 395
          Top = 48
        end
        inherited OPCEdit30: TOPCEdit
          Left = 395
          Top = 90
        end
        inherited OPCEdit39: TOPCEdit
          Left = 395
          Top = 174
        end
        inherited OPCEdit41: TOPCEdit
          Left = 395
          Top = 216
        end
        inherited OPCEdit95: TOPCEdit
          Left = 464
          Top = 48
        end
        inherited OPCEdit97: TOPCEdit
          Left = 464
          Top = 90
        end
        inherited OPCEdit99: TOPCEdit
          Left = 464
          Top = 132
        end
        inherited OPCEdit100: TOPCEdit
          Left = 464
          Top = 174
        end
        inherited OPCEdit104: TOPCEdit
          Left = 533
          Top = 48
        end
        inherited OPCEdit106: TOPCEdit
          Left = 533
          Top = 69
        end
        inherited OPCEdit108: TOPCEdit
          Left = 533
          Top = 90
        end
        inherited OPCEdit112: TOPCEdit
          Left = 533
          Top = 111
        end
        inherited OPCEdit113: TOPCEdit
          Left = 533
          Top = 132
        end
        inherited OPCEdit115: TOPCEdit
          Left = 533
          Top = 153
        end
        inherited OPCEdit117: TOPCEdit
          Left = 533
          Top = 174
        end
        inherited OPCEdit119: TOPCEdit
          Left = 533
          Top = 195
        end
        inherited OPCEdit121: TOPCEdit
          Left = 533
          Top = 216
        end
        inherited OPCEdit125: TOPCEdit
          Left = 602
          Top = 48
        end
        inherited OPCEdit126: TOPCEdit
          Left = 602
          Top = 69
        end
        inherited OPCEdit128: TOPCEdit
          Left = 602
          Top = 90
        end
        inherited OPCEdit130: TOPCEdit
          Left = 602
          Top = 111
        end
        inherited OPCEdit132: TOPCEdit
          Left = 602
          Top = 132
        end
        inherited OPCEdit134: TOPCEdit
          Left = 602
          Top = 153
        end
        inherited OPCEdit138: TOPCEdit
          Left = 602
          Top = 174
        end
        inherited OPCEdit160: TOPCEdit
          Left = 671
          Top = 48
        end
        inherited OPCEdit161: TOPCEdit
          Left = 671
          Top = 69
        end
        inherited OPCEdit162: TOPCEdit
          Left = 671
          Top = 90
        end
        inherited OPCEdit172: TOPCEdit
          Left = 671
          Top = 111
        end
        inherited OPCEdit173: TOPCEdit
          Left = 671
          Top = 132
        end
        inherited OPCEdit174: TOPCEdit
          Left = 671
          Top = 153
        end
        inherited OPCEdit175: TOPCEdit
          Left = 671
          Top = 174
        end
        inherited OPCEdit176: TOPCEdit
          Left = 671
          Top = 195
        end
        inherited OPCEdit177: TOPCEdit
          Left = 671
          Top = 216
        end
        inherited OPCEdit178: TOPCEdit
          Left = 740
          Top = 48
        end
        inherited OPCEdit179: TOPCEdit
          Left = 740
          Top = 69
        end
        inherited OPCEdit180: TOPCEdit
          Left = 740
          Top = 90
        end
        inherited OPCEdit181: TOPCEdit
          Left = 740
          Top = 111
        end
        inherited OPCEdit182: TOPCEdit
          Left = 740
          Top = 132
        end
        inherited OPCEdit183: TOPCEdit
          Left = 740
          Top = 153
        end
        inherited OPCEdit184: TOPCEdit
          Left = 740
          Top = 174
        end
        inherited Edit101: TEdit
          Left = 257
          Top = 27
          Text = #1055#1088' 600 '#1075#1086#1088
        end
        inherited Edit102: TEdit
          Left = 326
          Top = 27
          Text = #1054#1073#1088' 600 '#1075#1086#1088
        end
        inherited Edit103: TEdit
          Left = 395
          Top = 27
          Text = #1055#1088' 700 '#1075#1086#1088
        end
        inherited Edit104: TEdit
          Left = 464
          Top = 27
          Text = #1054#1073#1088' 700 '#1075#1086#1088
        end
        inherited Edit105: TEdit
          Left = 533
          Top = 27
          Text = #1055#1088' 700-1 '#1075#1086#1088
        end
        inherited Edit106: TEdit
          Left = 602
          Top = 27
          Text = #1054#1073#1088' 700-1 '#1075#1086#1088
        end
        inherited Edit107: TEdit
          Left = 671
          Top = 27
        end
        inherited Edit108: TEdit
          Left = 740
          Top = 27
        end
        inherited OPCEdit187: TOPCEdit
          Left = 257
          Top = 69
        end
        inherited OPCEdit188: TOPCEdit
          Left = 326
          Top = 69
        end
        inherited OPCEdit189: TOPCEdit
          Left = 395
          Top = 69
        end
        inherited OPCEdit190: TOPCEdit
          Left = 464
          Top = 69
        end
        inherited OPCEdit191: TOPCEdit
          Left = 257
          Top = 111
        end
        inherited OPCEdit192: TOPCEdit
          Left = 326
          Top = 111
        end
        inherited OPCEdit193: TOPCEdit
          Left = 395
          Top = 111
        end
        inherited OPCEdit194: TOPCEdit
          Left = 464
          Top = 111
        end
        inherited OPCEdit195: TOPCEdit
          Left = 257
          Top = 153
        end
        inherited OPCEdit196: TOPCEdit
          Left = 326
          Top = 153
        end
        inherited OPCEdit197: TOPCEdit
          Left = 395
          Top = 153
        end
        inherited OPCEdit198: TOPCEdit
          Left = 464
          Top = 153
        end
        inherited OPCEdit199: TOPCEdit
          Left = 257
          Top = 195
        end
        inherited OPCEdit21: TOPCEdit
          Left = 395
          Top = 195
        end
        inherited Edit122: TEdit
          Left = 326
          Top = 195
        end
        inherited Edit123: TEdit
          Left = 326
          Top = 216
        end
        inherited Edit126: TEdit
          Left = 602
          Top = 195
        end
        inherited Edit127: TEdit
          Left = 602
          Top = 216
        end
        inherited Edit128: TEdit
          Left = 740
          Top = 195
        end
        inherited Edit129: TEdit
          Left = 740
          Top = 216
        end
        inherited Edit124: TEdit
          Left = 464
          Top = 195
        end
        inherited Edit125: TEdit
          Left = 464
          Top = 216
        end
        inherited W_pr_vod_600gor: TOPCEdit
          Left = 395
          Top = 132
        end
        inherited Edit1: TEdit
          Left = 8
          Top = 315
        end
        inherited Edit2: TEdit
          Left = 317
          Top = 315
        end
        inherited Edit3: TEdit
          Left = 8
          Top = 462
        end
        inherited OPCEdit7: TOPCEdit
          Left = 317
          Top = 462
        end
        inherited OPCEdit8: TOPCEdit
          Left = 317
          Top = 336
        end
        inherited Edit4: TEdit
          Left = 8
          Top = 336
        end
        inherited Edit5: TEdit
          Left = 8
          Top = 357
        end
        inherited OPCEdit9: TOPCEdit
          Left = 317
          Top = 357
        end
        inherited OPCEdit11: TOPCEdit
          Left = 317
          Top = 378
        end
        inherited Edit6: TEdit
          Left = 8
          Top = 378
        end
        inherited Edit7: TEdit
          Left = 8
          Top = 399
        end
        inherited OPCEdit13: TOPCEdit
          Left = 317
          Top = 399
        end
        inherited OPCEdit14: TOPCEdit
          Left = 317
          Top = 420
        end
        inherited Edit8: TEdit
          Left = 8
          Top = 420
        end
        inherited OPCEdit15: TOPCEdit
          Left = 317
          Top = 441
        end
        inherited Edit9: TEdit
          Left = 8
          Top = 441
        end
        inherited Edit10: TEdit
          Left = 391
          Top = 315
        end
        inherited Edit11: TEdit
          Left = 391
          Top = 336
        end
        inherited Edit12: TEdit
          Left = 391
          Top = 357
        end
        inherited Edit13: TEdit
          Left = 391
          Top = 378
        end
        inherited Edit14: TEdit
          Left = 391
          Top = 399
        end
        inherited Edit15: TEdit
          Left = 391
          Top = 420
        end
        inherited Edit16: TEdit
          Left = 391
          Top = 441
        end
        inherited Edit17: TEdit
          Left = 464
          Top = 315
        end
        inherited Edit18: TEdit
          Left = 773
          Top = 315
        end
        inherited Edit19: TEdit
          Left = 464
          Top = 336
        end
        inherited OPCEdit16: TOPCEdit
          Left = 773
          Top = 336
        end
        inherited OPCEdit18: TOPCEdit
          Left = 809
          Top = 48
        end
        inherited OPCEdit19: TOPCEdit
          Left = 809
          Top = 69
        end
        inherited OPCEdit20: TOPCEdit
          Left = 809
          Top = 90
        end
        inherited OPCEdit22: TOPCEdit
          Left = 878
          Top = 48
        end
        inherited OPCEdit23: TOPCEdit
          Left = 878
          Top = 69
        end
        inherited OPCEdit24: TOPCEdit
          Left = 878
          Top = 90
        end
        inherited Edit20: TEdit
          Left = 809
          Top = 27
        end
        inherited Edit21: TEdit
          Left = 878
          Top = 27
        end
        inherited Edit40: TEdit
          Left = 878
          Top = 195
        end
        inherited Edit42: TEdit
          Left = 878
          Top = 216
        end
        inherited OPCEdit25: TOPCEdit
          Left = 809
          Top = 111
        end
        inherited OPCEdit27: TOPCEdit
          Left = 809
          Top = 132
        end
        inherited OPCEdit28: TOPCEdit
          Left = 809
          Top = 153
        end
        inherited OPCEdit29: TOPCEdit
          Left = 809
          Top = 174
        end
        inherited OPCEdit31: TOPCEdit
          Left = 809
          Top = 195
        end
        inherited OPCEdit32: TOPCEdit
          Left = 809
          Top = 216
        end
        inherited OPCEdit33: TOPCEdit
          Left = 878
          Top = 111
        end
        inherited OPCEdit34: TOPCEdit
          Left = 878
          Top = 132
        end
        inherited OPCEdit35: TOPCEdit
          Left = 878
          Top = 153
        end
        inherited OPCEdit36: TOPCEdit
          Left = 878
          Top = 174
        end
        inherited OPCEdit37: TOPCEdit
          Left = 947
          Top = 48
        end
        inherited OPCEdit38: TOPCEdit
          Left = 947
          Top = 69
        end
        inherited OPCEdit40: TOPCEdit
          Left = 947
          Top = 90
        end
        inherited OPCEdit42: TOPCEdit
          Left = 947
          Top = 111
        end
        inherited OPCEdit43: TOPCEdit
          Left = 947
          Top = 132
        end
        inherited OPCEdit44: TOPCEdit
          Left = 947
          Top = 153
        end
        inherited OPCEdit45: TOPCEdit
          Left = 947
          Top = 174
        end
        inherited OPCEdit46: TOPCEdit
          Left = 947
          Top = 195
        end
        inherited OPCEdit47: TOPCEdit
          Left = 947
          Top = 216
        end
        inherited OPCEdit48: TOPCEdit
          Left = 1016
          Top = 48
        end
        inherited OPCEdit49: TOPCEdit
          Left = 1016
          Top = 69
        end
        inherited OPCEdit50: TOPCEdit
          Left = 1016
          Top = 90
        end
        inherited OPCEdit51: TOPCEdit
          Left = 1016
          Top = 111
        end
        inherited OPCEdit52: TOPCEdit
          Left = 1016
          Top = 132
        end
        inherited OPCEdit53: TOPCEdit
          Left = 1016
          Top = 153
        end
        inherited OPCEdit54: TOPCEdit
          Left = 1016
          Top = 174
        end
        inherited Edit22: TEdit
          Left = 947
          Top = 27
        end
        inherited Edit23: TEdit
          Left = 1016
          Top = 27
        end
        inherited Edit24: TEdit
          Left = 1016
          Top = 195
        end
        inherited Edit33: TEdit
          Left = 1016
          Top = 216
        end
        inherited OPCEdit55: TOPCEdit
          Left = 1085
          Top = 48
        end
        inherited OPCEdit56: TOPCEdit
          Left = 1085
          Top = 69
        end
        inherited OPCEdit57: TOPCEdit
          Left = 1085
          Top = 90
        end
        inherited OPCEdit58: TOPCEdit
          Left = 1154
          Top = 48
        end
        inherited OPCEdit59: TOPCEdit
          Left = 1154
          Top = 69
        end
        inherited OPCEdit60: TOPCEdit
          Left = 1154
          Top = 90
        end
        inherited Edit34: TEdit
          Left = 1085
          Top = 27
        end
        inherited Edit35: TEdit
          Left = 1154
          Top = 27
        end
        inherited Edit36: TEdit
          Left = 1154
          Top = 195
        end
        inherited Edit37: TEdit
          Left = 1154
          Top = 216
        end
        inherited OPCEdit61: TOPCEdit
          Left = 1085
          Top = 111
        end
        inherited OPCEdit62: TOPCEdit
          Left = 1085
          Top = 132
        end
        inherited OPCEdit63: TOPCEdit
          Left = 1085
          Top = 153
        end
        inherited OPCEdit64: TOPCEdit
          Left = 1085
          Top = 174
        end
        inherited OPCEdit65: TOPCEdit
          Left = 1085
          Top = 195
        end
        inherited OPCEdit66: TOPCEdit
          Left = 1085
          Top = 216
        end
        inherited OPCEdit67: TOPCEdit
          Left = 1154
          Top = 111
        end
        inherited OPCEdit68: TOPCEdit
          Left = 1154
          Top = 132
        end
        inherited OPCEdit69: TOPCEdit
          Left = 1154
          Top = 153
        end
        inherited OPCEdit70: TOPCEdit
          Left = 1154
          Top = 174
        end
        inherited Edit38: TEdit
          Left = 464
          Top = 357
          Text = #1048#1089#1093#1086#1076#1085#1072#1103' '#1059#1083#1100#1073#1080#1085#1089#1082#1072#1103' '#1094'.'#1074'. '#8470'3'
        end
        inherited OPCEdit71: TOPCEdit
          Left = 773
          Top = 357
        end
        inherited Edit39: TEdit
          Left = 464
          Top = 378
          Text = #1048#1089#1093#1086#1076#1085#1072#1103' '#1059#1083#1100#1073#1080#1085#1089#1082#1072#1103' '#1094'.'#1074'. '#8470'4'
        end
        inherited OPCEdit72: TOPCEdit
          Left = 773
          Top = 378
        end
        inherited Edit43: TEdit
          Left = 464
          Top = 420
        end
        inherited Edit44: TEdit
          Left = 464
          Top = 399
        end
        inherited OPCEdit73: TOPCEdit
          Left = 773
          Top = 399
        end
        inherited OPCEdit74: TOPCEdit
          Left = 773
          Top = 420
        end
      end
    end
    object tsBalans: TTabSheet
      Caption = #1041#1072#1083#1072#1085#1089
      ImageIndex = 2
      inline fraTeplosetBalans1: TfraTeplosetBalans
        Left = 0
        Top = 0
        Width = 1020
        Height = 541
        HorzScrollBar.Range = 766
        VertScrollBar.Range = 470
        Align = alClient
        AutoScroll = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        inherited StaticText15: TStaticText
          Width = 260
        end
        inherited StaticText19: TStaticText
          Left = 374
          Width = 200
        end
        inherited StaticText20: TStaticText
          Left = 573
        end
        inherited Edit29: TEdit
          Left = 374
          Width = 200
          Text = 'Q '#1094#1080#1088#1082'. '#1074#1086#1076#1099' '#1074#1074' 3 '#1058#1069#1062
        end
        inherited OPCEdit113: TOPCEdit
          Left = 573
        end
        inherited OPCEdit114: TOPCEdit
          Left = 573
        end
        inherited Edit30: TEdit
          Left = 374
          Width = 200
          Text = 'Q '#1094#1080#1088#1082'. '#1074#1086#1076#1099' '#1074#1074' 4 '#1058#1069#1062
        end
        inherited Edit31: TEdit
          Left = 374
          Width = 200
          Text = 'Q '#1094#1080#1088#1082'. '#1074#1086#1076#1099' '#1074#1074' 3 '#1041#1053
        end
        inherited OPCEdit115: TOPCEdit
          Left = 573
        end
        inherited OPCEdit116: TOPCEdit
          Left = 573
        end
        inherited Edit32: TEdit
          Left = 374
          Width = 200
          Text = 'Q '#1094#1080#1088#1082'. '#1074#1086#1076#1099' '#1074#1074' 4 '#1041#1053
        end
        inherited Edit33: TEdit
          Left = 374
          Width = 200
        end
        inherited OPCEdit117: TOPCEdit
          Left = 573
        end
        inherited Edit34: TEdit
          Left = 374
          Top = 432
          Width = 200
        end
        inherited OPCEdit118: TOPCEdit
          Left = 573
          Top = 432
        end
        inherited Edit36: TEdit
          Left = 374
          Top = 414
          Width = 200
        end
        inherited Edit40: TEdit
          Left = 374
          Top = 450
          Width = 200
          Text = 'Q '#1089#1073#1088#1086#1089#1085#1099#1093' '#1074#1086#1076' ('#1073#1077#1088#1077#1075#1086#1074#1072#1103' '#1085#1072#1089#1086#1089#1085#1072#1103')'
        end
        inherited OPCEdit126: TOPCEdit
          Left = 573
          Top = 450
        end
        inherited Edit41: TEdit
          Left = 374
          Top = 468
          Width = 200
        end
        inherited OPCEdit127: TOPCEdit
          Left = 573
          Top = 468
        end
        inherited Edit42: TEdit
          Left = 374
          Top = 486
          Width = 200
        end
        inherited OPCEdit128: TOPCEdit
          Left = 573
          Top = 486
        end
        inherited OPCEdit122: TOPCEdit
          Left = 573
          Top = 414
        end
      end
    end
    object tsNGVS: TTabSheet
      Caption = #1053#1043#1042#1057
      ImageIndex = 3
      inline fraTeplo_NGVS1: TfraTurb_NGVS
        Left = 0
        Top = 0
        Width = 1069
        Height = 541
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1043#1088#1072#1076#1080#1088#1085#1103
      ImageIndex = 4
      inline fraGradirnya1: TfraGradirnya
        Left = 0
        Top = 0
        Width = 1020
        Height = 541
        Align = alClient
        TabOrder = 0
        inherited Edit26: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit26: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit1: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit1: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit2: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit2: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit3: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit3: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit4: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit4: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit5: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit5: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit6: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit6: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit7: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit7: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit8: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit8: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit9: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit9: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit10: TEdit
          Left = 2
          Height = 22
        end
        inherited OPCEdit10: TOPCEdit
          Left = 242
          Height = 22
        end
        inherited Edit11: TEdit
          Height = 22
        end
        inherited OPCEdit11: TOPCEdit
          Height = 22
        end
        inherited Edit12: TEdit
          Height = 22
        end
        inherited OPCEdit12: TOPCEdit
          Height = 22
        end
        inherited Edit13: TEdit
          Height = 22
        end
        inherited OPCEdit13: TOPCEdit
          Height = 22
        end
        inherited OPCEdit14: TOPCEdit
          Height = 22
        end
        inherited Edit14: TEdit
          Height = 22
        end
        inherited Edit15: TEdit
          Height = 22
        end
        inherited OPCEdit15: TOPCEdit
          Height = 22
        end
        inherited Edit16: TEdit
          Height = 22
        end
        inherited OPCEdit16: TOPCEdit
          Height = 22
        end
        inherited Edit17: TEdit
          Height = 22
        end
        inherited OPCEdit17: TOPCEdit
          Height = 22
        end
        inherited Edit18: TEdit
          Height = 22
        end
        inherited OPCEdit18: TOPCEdit
          Height = 22
        end
        inherited OPCEdit19: TOPCEdit
          Height = 22
        end
        inherited Edit19: TEdit
          Height = 22
        end
        inherited Edit20: TEdit
          Height = 22
        end
        inherited OPCEdit20: TOPCEdit
          Height = 22
        end
        inherited Edit21: TEdit
          Height = 22
        end
        inherited OPCEdit21: TOPCEdit
          Height = 22
        end
        inherited OPCEdit22: TOPCEdit
          Height = 22
        end
        inherited Edit22: TEdit
          Height = 22
        end
        inherited OPCEdit24: TOPCEdit
          Height = 22
        end
        inherited Edit24: TEdit
          Height = 22
        end
        inherited Edit25: TEdit
          Height = 22
        end
        inherited OPCEdit25: TOPCEdit
          Height = 22
        end
        inherited Edit27: TEdit
          Height = 22
        end
        inherited OPCEdit27: TOPCEdit
          Height = 22
        end
        inherited OPCEdit28: TOPCEdit
          Height = 22
        end
        inherited Edit28: TEdit
          Height = 22
        end
        inherited Edit29: TEdit
          Height = 22
        end
        inherited OPCEdit29: TOPCEdit
          Height = 22
        end
        inherited Edit30: TEdit
          Height = 22
        end
        inherited OPCEdit30: TOPCEdit
          Height = 22
        end
        inherited Edit31: TEdit
          Height = 22
        end
        inherited OPCEdit31: TOPCEdit
          Height = 22
        end
        inherited Edit32: TEdit
          Height = 22
        end
        inherited OPCEdit32: TOPCEdit
          Height = 22
        end
        inherited Edit33: TEdit
          Height = 22
        end
        inherited OPCEdit33: TOPCEdit
          Height = 22
        end
        inherited Edit34: TEdit
          Height = 22
        end
        inherited OPCEdit34: TOPCEdit
          Height = 22
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1099#1077' '#1053#1091#1078#1076#1099
      ImageIndex = 5
      inline fraOwnNeeds1: TfraOwnNeeds
        Left = 0
        Top = 0
        Width = 1020
        Height = 541
        Align = alClient
        TabOrder = 0
        inherited OPCEdit41: TOPCEdit
          Height = 22
        end
        inherited OPCEdit42: TOPCEdit
          Height = 22
        end
        inherited OPCEdit128: TOPCEdit
          Height = 22
        end
        inherited OPCEdit180: TOPCEdit
          Height = 22
        end
        inherited OPCEdit45: TOPCEdit
          Height = 22
        end
      end
    end
  end
  object TimerBalans: TTimer
    Interval = 5000
    OnTimer = TimerBalansTimer
    Left = 804
    Top = 280
  end
end
