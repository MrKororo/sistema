class LiquidacionPdf < Prawn::Document
	def initialize(liquidacion)
		super(top_margin: 70)
			text "Liquidacion de remuneraciones\n #{DateTime.now.to_date.strftime("%d/%m/%Y")}" ,:align => :center
			@liquidacion = liquidacion
			empresa_data
			text "\nDatos del trabajador \n"
			personal_data
			text "\n "
			tabla_haberes
			
	end

	def empresa_data
		@empresa = Empresa.first
		table [["Empleador: #{@empresa.nombre} ","Giro: #{@empresa.giro_empresa}"],
			  ["Rut :#{@empresa.rut_empresa}","Domicilio: #{@empresa.domicilio}"]], :width => 540
	end

	def personal_data
		table [["Nombre: #{@liquidacion.personal.nombre_apellido}","Fecha ingreso: #{@liquidacion.personal.fecha_contratacion.strftime("%d/%m/%Y")}"],
			  ["Rut: #{@liquidacion.personal.rut_personal}","Cargo: #{@liquidacion.personal.categorium.categoria}"],
			  ["Afp: #{@liquidacion.personal.afp_personal}","Isapre: #{@liquidacion.personal.sistema_salud}"]],:width =>540
	end


	def tabla_haberes
		table [["Haberes"],["Item","Detalle"],["Haberes", "$#{@liquidacion.habere.sueldo_base}"],["Asignacion","$#{@liquidacion.
			asignacion.asignacion}"],["Bonificacion","$#{@liquidacion.bonificacion.bono}"]], :width => 250
		
	end
	def another_data

	end

	def cuadro
		bounding_box([0, 617],:width => 300,:height => 617) do
  			stroke_bounds  
  			
  		end	
	end

end