#language: pt

Funcionalidade: Informar que o meu pedido foi extraviado pela loja
    Sendo cliente Via quero ser informado via email que o
    meu pedido foi extraviado quando realizar a minha
    compra online

    @ET9-001
    Esquema do Cenario: Pedido extraviado ET9-001

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            # | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |
           | 15739048001 | 157390480 | EXL            | 8               | ET9-001        | 12                 | 25              | B2C        |
