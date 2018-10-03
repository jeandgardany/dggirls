json.extract! entrega, :id, :data, :qtd_entrega, :costura_id, :valor_pago, :restante, :finalizado, :perdas, :obs, :created_at, :updated_at
json.url entrega_url(entrega, format: :json)
