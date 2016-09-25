class Personal < ActiveRecord::Base
  belongs_to :categorium
  belongs_to :centrocosto
  
  #validates_format_of :rut_personal,
  #                    :with => /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i,
  #                   :message => "no válido."
  

  validates_presence_of :nombre_personal, :apellidop_personal, :apellidom_personal, :rut_personal

  TIPOS_CONTRATO = ["Contrato de trabajo a plazo fijo", "Contrato de trabajo indefinido", 
  	"Contrato de trabajo transitorio"]
  AFP_EXISTENTE = ["Bansander", "Cuprum", "Habitat", "Planvital", "Provida", "Santa María"]
  SISTEMA_SALUD = ['Isapre', "Fonasa"]
  TIPO_PAGO = ['Deposito cuenta corriente', 'Deposito cuenta vista', 'Cheque']

searchable do
	text :nombre_personal, :apellidop_personal, :apellidom_personal
end

  def nombre_apellido
    "#{nombre_personal} #{apellidop_personal} #{apellidom_personal}"
  end
end
