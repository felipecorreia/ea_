json.array!(@painels) do |painel|
  json.extract! painel, :nome_app, :tipo_evento
  json.url painel_url(painel, format: :json)
end
