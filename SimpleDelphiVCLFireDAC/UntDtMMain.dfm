object DtMMain: TDtMMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 322
  Width = 410
  object FDCon: TFDConnection
    Params.Strings = (
      
        'Database=G:\Unidade C\Projetos GitHub\SimpleDelphiVCLFireDAC\Sim' +
        'pleDelphiVCLFireDAC\SIMPLEDELPHIVCLFIREDACFIREBIRD.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=ISO8859_2'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object FDTransactMain: TFDTransaction
    Connection = FDCon
    Left = 120
    Top = 8
  end
  object FDPhysFBDriverLinkMain: TFDPhysFBDriverLink
    Left = 48
    Top = 72
  end
  object FDQMain: TFDQuery
    Connection = FDCon
    SQL.Strings = (
      'SELECT * '
      '  FROM USUARIO WHERE USUARIO = :PUSUARIO'
      '   AND SENHA = :PSENHA'
      '         ')
    Left = 48
    Top = 152
    ParamData = <
      item
        Name = 'PUSUARIO'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'PSENHA'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end
