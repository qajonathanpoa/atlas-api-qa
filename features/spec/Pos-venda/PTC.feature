#language: pt

@PTC
Funcionalidade: Informar que o meu pedido teve um atraso na coleta de caso critico
    Sendo cliente Via quero ser informado via email que o
    meu pedido teve um atraso na coleta de caso critico quando realizar a minha
    compra online

    @PV34-003
    Esquema do Cenario: Ponto PTC para atraso critico na entrega e aplicabilidade PV34-003

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 35540573402 | 355405734 | PTC            | 8               | PV34-003        | 12                 | 15              | B2C        |
            | 35730443904 | 357304439 | PTC            | 1               | PV34-003        | 12                 | 15              | B2C        |
            