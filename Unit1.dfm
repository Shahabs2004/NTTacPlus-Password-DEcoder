object Form1: TForm1
  Left = 329
  Top = 107
  AutoScroll = False
  BorderIcons = []
  Caption = 'NTTacPlus Password Decoder'
  ClientHeight = 91
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinLinkLabel1: TbsSkinLinkLabel
    Left = 81
    Top = 57
    Width = 103
    Height = 14
    Cursor = crHandPoint
    UseSkinFont = True
    DefaultActiveFontColor = clBlue
    URL = 'http://www.TacSharp.com'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsUnderline]
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsUnderline]
    Caption = 'www.TacSharp.com'
    ParentFont = False
  end
  object bsSkinStdLabel1: TbsSkinStdLabel
    Left = 0
    Top = 74
    Width = 262
    Height = 17
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Alignment = taCenter
    AutoSize = False
    Caption = 'NTTacPlus Password Decoder by Shahab Sadeghi'
    ParentFont = False
    WordWrap = True
  end
  object Decoder: TDsFancyButton
    Left = 176
    Top = 16
    Width = 83
    Height = 25
    Caption = '&Decode'
    FancyEffects.FaceColor = clBtnFace
    FancyEffects.FrameColor = clGray
    FancyEffects.FrameStyle = fmGradient
    FancyEffects.FrameWidth = 4
    FancyEffects.HoverColor = clBlue
    FancyEffects.Shape = btnCapsule
    FancyEffects.CornerRadius = 6
    FancyEffects.TextStyle = txShadowed
    Glyphs.Layout = lyLeft
    Glyphs.Number = 1
    Glyphs.Distance = 0
    OnClick = DecoderClick
  end
  object DecodedPassword: TbsSkinEdit
    Left = 5
    Top = 31
    Width = 166
    Height = 20
    Text = 'DecodedPassword'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 20
    ButtonMode = False
    SkinDataName = 'edit'
    ReadOnly = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object EncodedPassword: TbsSkinEdit
    Left = 5
    Top = 5
    Width = 165
    Height = 20
    Text = 'EncodedPassword'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 20
    ButtonMode = False
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = True
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    MinHeight = 0
    MinWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = []
    Left = 220
    Top = 44
  end
end
