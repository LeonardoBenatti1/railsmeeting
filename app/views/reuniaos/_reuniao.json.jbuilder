json.extract! reuniao, :id, :nome_completo, :data, :descricao, :created_at, :updated_at
json.url reuniao_url(reuniao, format: :json)
