json.extract! registro_accione, :id, :user_id, :accion, :detalle, :fecha, :created_at, :updated_at
json.url registro_accione_url(registro_accione, format: :json)