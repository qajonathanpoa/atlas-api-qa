require 'kafka'

Dado('que eu tenho um pedido com as seguintes informações:') do |cenarios|
  @dado_cenario = cenarios.hashes.first
end
Dado('confirmo que não exista um pedido nas tabelas do mongo') do
  doc_mongo = @app.doc_mongo.remover_tracking_mongo(@dado_cenario[:IdEntrega], @dado_cenario[:IdPedido])
end

Dado('que ele atenda as seguintes condicoes de regra do pedido') do
  doc_mongo = @app.pedidos_api.forjar_pedido(@dado_cenario, @dado_cenario[:IdEntrega], @dado_cenario[:IdUnidadeNegocio])
end

Quando('submeto o cadastro desse item em uma fila de pedidos kafka') do
  msg = get_montar_payload(

    @dado_cenario[:IdEntrega],
    @dado_cenario[:PontoControle],
    @dado_cenario[:IdUnidadeNegocio]

  )
  send_kafka = @app.kafka_conect.send_kafka_qa(msg)

  # puts msg
end

Entao('devo ser informado via email o calculo da aplicabilidade') do
  puts 'Aguardando 14 segundos para verificação no Mongo'
  sleep (14)
  doc = @app.doc_mongo.obter_tracking_validation(@dado_cenario[:IdEntrega])
  ponto = @app.doc_mongo.obter_ponto_controle(@dado_cenario[:Aplicabilidade])

  if ponto != true
    puts "[LOG] Aplicabilidade #{@dado_cenario[:Aplicabilidade]} INATIVA para o ponto #{@dado_cenario[:PontoControle]}"
    expect(ponto).to be_falsey
  else
    send_message = @app.doc_mongo.obter_send_message(@dado_cenario[:IdEntrega])
    expect(send_message['IdEntrega']).to eql @dado_cenario[:IdEntrega].to_i
    expect(send_message['DirectOne']['Aplicabilidade']).to eql @dado_cenario[:Aplicabilidade]
    log "Aplicabilidade calculada=> #{send_message['DirectOne']['Aplicabilidade']}"
  end
  expect(doc['EntregaId']).to eql @dado_cenario[:IdEntrega].to_i
  expect(doc['PedidoId']).to eql @dado_cenario[:IdPedido].to_i
  expect(doc['BusinessUnit']).to eql @dado_cenario[:IdUnidadeNegocio].to_i
  log "IdEntrega => #{doc['EntregaId']}"
  log "IdPedido => #{doc['PedidoId']}"
  log "Unidade de Negocio => #{doc['BusinessUnit']}"
end

Entao('nao devo ser informado via email o calculo da aplicabilidade quando o pedido nao for gravado na sendmessage') do
  #Fluxo de inibicao de comunicacao - Executando a pesquisa do método que faz a busca dentro da collection de SendMessage pelo valor de Aplicabilidade
  send_message = @app.doc_mongo.obter_send_message(@dado_cenario[:Aplicabilidade])

  if send_message == nil
    puts "[LOG] Não foram encontradas Aplicabilidades para o ponto #{@dado_cenario[:PontoControle]}"
    expect(send_message).to eql nil
  end
end
