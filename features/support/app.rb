class App
  def pedidos_api
    PedidosApi.new
  end

  def doc_mongo
    MongoScripts.new
  end

  def kafka_conect
    KafkaConect.new
  end

  def kafka_consumer
    KafkaConsumer.new
  end
end
