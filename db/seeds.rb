Categorium.create!([
  {categoria: "Secretaria"},
  {categoria: "Funcionario"},
  {categoria: "Profesor"}
])
Centrocosto.create!([
  {nombre_centro: "Puerto Montt", codigo_centro: "065", detalle_centro: "Centro destinado a Puerto Montt"}
])
Empresa.create!([
  {nombre: "Gonzalez S.A", giro_empresa: "Servicios Informaticos", domicilio: "Calle falsa 123", email: "falso@gmail.com", contacto: "", website: "", rut_empresa: 12345678, telefono: 424241121}
])
Personal.create!([
  {nombre_personal: "Diego", apellidop_personal: "Gonzalez", apellidom_personal: "Cuevas", rut_personal: 176941235, afp_personal: "", sistema_salud: "", personal_activo: true, fecha_contratacion: "2016-09-20", tipo_contrato: "", tipo_pago: "", num_cuenta: nil, categorium_id: 1, centrocosto_id: 1},
  {nombre_personal: "Lorde", apellidop_personal: "Royals", apellidom_personal: "Spot", rut_personal: 123456789, afp_personal: "", sistema_salud: "", personal_activo: true, fecha_contratacion: "2016-09-23", tipo_contrato: "", tipo_pago: "", num_cuenta: nil, categorium_id: 3, centrocosto_id: 1}
])
Subcategorium.create!([
  {categorium_id: 1, subcategoria: "S1"},
  {categorium_id: 1, subcategoria: "S2"},
  {categorium_id: 1, subcategoria: "S3"},
  {categorium_id: 2, subcategoria: "F1"},
  {categorium_id: 2, subcategoria: "F2"},
  {categorium_id: 2, subcategoria: "F3"},
  {categorium_id: 3, subcategoria: "Pr1"},
  {categorium_id: 3, subcategoria: "Pr2"},
  {categorium_id: 3, subcategoria: "Pr3"}
])
User.create!([
  {nombre: "Diego", apellido_paterno: "Gonzalez", apellido_materno: "Cuevas", email: "diegongc@ic.uach.cl", cargo: "admin", password_digest: "$2a$10$GaoaTC9dRS63.0pOnjUb/.HaYwl6hDUJVJ2JUeV5nz0OyAi0bM9Be"}
])
