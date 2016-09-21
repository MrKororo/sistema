class Personal < ActiveRecord::Base
  belongs_to :categorium
  belongs_to :centrocosto

  validates_presence_of :nombre_personal, :apellidop_personal, :apellidom_personal

  contrato = ["Contrato de trabajo a plazo fijo", "Contrato de trabajo indefinido", 
  	"Contrato de trabajo transitorio"]

end
