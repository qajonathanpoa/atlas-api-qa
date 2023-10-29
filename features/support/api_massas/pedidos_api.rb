require 'kafka'

class PedidosApi
  include HTTParty

  def forjar_pedido(dado_cenario, id_entrega, unidade_negocio)
    body = {
      "pontoControle": {
        "id": dado_cenario['PontoControle'],
        "data": '2022-12-20'
      },
      "idFormaPagamento": dado_cenario['idFormaPagamento'].to_i,
      "idTipoEntrega": dado_cenario['idTipoEntrega'].to_i,
      "tipoVenda": dado_cenario['tipoVenda'],
      "dataPrevisao": '2022-12-21',
      "vendedorOnline": true
    }
    headers = {
      'Content-Type': 'application/json',
      'accept': '*/*'
    }
    @url = "https://dev-api-pedidos-qa.via.com.br/api/Pedidos/forjar/#{id_entrega}/#{unidade_negocio}/1"

    @response = self.class.post(@url, headers: headers, body: JSON.pretty_generate(body), verify: false)

    if @response.code != 200
      puts "#{@url} [URL] enviada na requisição"
      puts "[ERRO] Body enviado: #{JSON.pretty_generate(body)}\n"
      puts "[ERRO] Response: #{@response}"
      puts "[ERRO] Response: #{@response.code}"
    end
  rescue StandardError
    puts '[ERRO] Falha ao forjar pedido!'
  end
end
