object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL'
      'Database=lmpiscofinsdba'
      'OSAuthent=Yes'
      'Server=(localdb)\mssqllocaldb')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 40
  end
end
