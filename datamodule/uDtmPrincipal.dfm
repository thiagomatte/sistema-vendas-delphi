object DtmPrincipal: TDtmPrincipal
  Height = 225
  Width = 432
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'CP_UTF16'
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP'
      'codepage=CP_UTF16')
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=vendas;Data Source=DESKTOP-BO27GAN\SQLE' +
      'XPRESS'
    User = ''
    Password = ''
    Protocol = 'ado'
    Left = 24
    Top = 24
  end
end
