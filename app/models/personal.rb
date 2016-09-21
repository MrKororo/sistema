class Personal < ActiveRecord::Base
  belongs_to :categorium
  belongs_to :centrocosto

  validates_presence_of :nombre_personal, :apellidop_personal, :apellidom_personal

  TIPOS_CONTRATO = ["Contrato de trabajo a plazo fijo", "Contrato de trabajo indefinido", 
  	"Contrato de trabajo transitorio"]
  AFP_EXISTENTE = ["Bansander", "Cuprum", "Habitat", "Planvital", "Provida", "Santa María"]
  SISTEMA_SALUD = ['Isapre', "Fonasa"]
  TIPO_PAGO = ['Deposito cuenta corriente', 'Deposito cuenta vista', 'Cheque']


end
