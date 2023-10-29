require 'mongo'

class MongoBase
  def obter_conexao(mongo)
    if ENV['CONFIG'] == 'hlg'
      Mongo::Client.new('mongodb://sac_plataforma:sAcPl4t4Rf0m4@mdbh-sophia-1.dc.nova:27017,mdbh-sophia-2.dc.nova:27017,mdbh-sophia-3.dc.nova:27017/SAC_PlataformaComunicacao_QA?replicaSet=rsSOPHIAHLG')
    else
      Mongo::Client.new('mongodb://sac_plataforma:sAcPl4t4Rf0m4@mdbh-sophia-1.dc.nova:27017,mdbh-sophia-2.dc.nova:27017,mdbh-sophia-3.dc.nova:27017/SAC_PlataformaComunicacao?replicaSet=rsSOPHIAHLG')
    end
    #Tratando o erro e printando no terminal, caso aconteça!
  rescue StandardError
    puts "[ERRO] Falha ao tentar conectar ao mongo #{@mongo}!"
  end

  def buscar_trackings(mongo, collection_name, campo, valor, logs)
    db = obter_conexao(mongo)
    collection = db[collection_name]
    docs = collection.find({ campo => valor })
    puts "[#{DateTime.now}][LOG] Buscando registro do tracking #{valor} na collection" " #{collection_name} do mongo!" if logs
    resultado = docs.first

    if resultado != nil
      puts "[LOG] Valor do tracking #{resultado} foi encontrado na" " #{collection_name}!" if logs
    else
      puts "[LOG] Valor do tracking #{resultado} nao encontrado na" " #{collection_name}!" if logs
    end
    return resultado
  end
end
