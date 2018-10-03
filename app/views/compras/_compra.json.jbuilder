json.extract! compra, :id, :data, :fornecedor_id, :produto, :valor, :pagamento, :created_at, :updated_at
json.url compra_url(compra, format: :json)
