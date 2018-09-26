object Module: TModule
  OldCreateOrder = False
  Top = 462
  Height = 242
  Width = 191
  object DtDiaro: TDataSource
    AutoEdit = False
    Left = 8
    Top = 8
  end
  object DtFuncionario: TDataSource
    DataSet = qRfUNCIONARIO
    Left = 24
    Top = 152
  end
  object TBFUNCAO: TTable
    DatabaseName = 'mArKeYtOR'
    TableName = 'MK_FUNCAO.DB'
    Left = 96
    Top = 16
    object TBFUNCAOCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 2
    end
    object TBFUNCAODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object TBFUNCAOHORA_DIARIA: TStringField
      FieldName = 'HORA_DIARIA'
      Size = 5
    end
    object TBFUNCAOCOMPESA: TBooleanField
      FieldName = 'COMPESA'
    end
    object TBFUNCAOOPERA_VEICULO: TBooleanField
      FieldName = 'OPERA_VEICULO'
    end
    object TBFUNCAOREDUCAO_INTERVALO: TStringField
      FieldName = 'REDUCAO_INTERVALO'
      Size = 5
    end
    object TBFUNCAOLIMITE_HORAS: TStringField
      FieldName = 'LIMITE_HORAS'
      Size = 5
    end
  end
  object DTFUNCAO: TDataSource
    DataSet = TBFUNCAO
    Left = 144
    Top = 16
  end
  object qRfUNCIONARIO: TQuery
    DatabaseName = 'mArKeYtOR'
    SQL.Strings = (
      'Select * from funcionario'
      'order by matricula;')
    Left = 24
    Top = 112
    object qRfUNCIONARIOMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Origin = 'MARKEYTOR."funcionario.DB".MATRICULA'
      Size = 5
    end
    object qRfUNCIONARIOFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Origin = 'MARKEYTOR."funcionario.DB".FUNCAO'
      Size = 2
    end
    object qRfUNCIONARIOOPERAVEICULO: TBooleanField
      FieldName = 'OPERAVEICULO'
      Origin = 'MARKEYTOR."funcionario.DB".OPERAVEICULO'
    end
    object qRfUNCIONARIONome: TStringField
      FieldName = 'Nome'
      Origin = 'MARKEYTOR."funcionario.DB".Nome'
      Size = 50
    end
    object qRfUNCIONARIOSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'MARKEYTOR."funcionario.DB".SITUACAO'
      Size = 1
    end
    object qRfUNCIONARIOINATIVO_INICIO: TDateField
      FieldName = 'INATIVO_INICIO'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".INATIVO_INICIO'
    end
    object qRfUNCIONARIOINATIVO_FIM: TDateField
      FieldName = 'INATIVO_FIM'
      Origin = 'MARKEYTOR."FUNCIONARIO.DB".INATIVO_FIM'
    end
  end
end
