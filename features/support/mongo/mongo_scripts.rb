require_relative '../mongo/mongo_base'
#Descomente o código na linha abaixo para criar arquivo de log (pasta do projeto"logs")
#e verificar se logrou sucesso na conexão com o Mongo!
#Mongo::Logger.logger = Logger.new('./logs/mongo.log')

class MongoScripts
  def initialize
    @@mongo_base = MongoBase.new
    @db = @@mongo_base.obter_conexao('hlg')
  end

  def obter_tracking_validation(id_entrega, logs = false)
    @@mongo_base.buscar_trackings('hlg', :TrackingValidation, 'EntregaId', id_entrega.to_i, logs)
  end

  def obter_ponto_controle(aplicabilidade)
    busca = @db[:Aplicabilidades]
    collection = busca.find({ Nome: aplicabilidade })

    resultado = collection.first[:Ativo]

    if resultado == false
      puts '[LOG] Aplicabilidade INATIVA!'
    else
      puts '[LOG] Aplicabilidade ATIVA!'
    end
    return resultado
  end

  def obter_send_message(id_entrega, logs = false)
    @@mongo_base.buscar_trackings('hlg', :SendMessage, 'IdEntrega', id_entrega.to_i, logs)
  end

  def remover_tracking_mongo(id_entrega, id_pedido)
    if @db[:TrackingsAtlas].find({ IdEntrega: id_entrega.to_i, IdPedido: id_pedido.to_i }).count > 0
      @db[:TrackingsAtlas].delete_many({ IdEntrega: id_entrega.to_i })
      puts 'IDEntrega ' + id_entrega + ' deletado da tabela TrackingsAtlas'
      @db.close
    end

    if @db[:TrackingValidation].find({ EntregaId: id_entrega.to_i }).count > 0
      @db[:TrackingValidation].delete_many({ EntregaId: id_entrega.to_i })
      puts 'IDEntrega ' + id_entrega + ' deletado da tabela TrackingValidation'
      @db.close
    end

    if @db[:SendMessage].find({ IdEntrega: id_entrega.to_i }).count > 0
      @db[:SendMessage].delete_many({ IdEntrega: id_entrega.to_i })
      puts 'IDEntrega ' + id_entrega + ' deletado da tabela SendMessage'
      @db.close
    end

    if @db[:SendMessageValidation].find({ EntregaId: id_entrega.to_i }).count > 0
      @db[:SendMessageValidation].delete_many({ EntregaId: id_entrega.to_i })
      puts 'IDEntrega ' + id_entrega + ' deletado da tabela SendMessageValidation'
      @db.close
    end
    if @db[:MultipleDeliveriesGroup].find({ IdPedido: id_pedido.to_i }).count > 0
      @db[:MultipleDeliveriesGroup].delete_many({ IdPedido: id_pedido.to_i })
      puts 'IdPedido ' + id_pedido + ' deletado da tabela MultipleDeliveriesGroup'
      @db.close
    end
  end
end
