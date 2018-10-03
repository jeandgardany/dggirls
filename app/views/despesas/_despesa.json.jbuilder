json.extract! despesa, :id, :data, :nome, :valor, :obs, :created_at, :updated_at
json.url despesa_url(despesa, format: :json)
