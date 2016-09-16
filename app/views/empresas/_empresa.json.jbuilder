json.extract! empresa, :id, :nombre, :giro_empresa, :domicilio, :email, :contacto, :website, :rut_empresa, :telefono, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)