#language: pt

Funcionalidade: Informar que o meu pagamento nao foi aprovado
    Sendo cliente Via quero ser informado via email que o
    meu pagamento foi aprovado quando realizar a minha
    compra online

    @AP6-001
    Esquema do Cenario: Pagamento aprovado AP6-001

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PNA            | 1               | AP6-001        | 12                  |    1          | B2C        |


 @AP6-002
    Esquema do Cenario: Pagamento aprovado AP6-002

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PNA            | 1               | AP6-002        | 12                  |    1          | B2C        |

 @AP6-003
    Esquema do Cenario: Pagamento aprovado AP6-003

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PNA            | 1               | AP6-003        | 12                  |    1          | B2C        |

 @AP6-004
    Esquema do Cenario: Pagamento aprovado AP6-004

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PNA            | 1               | AP6-004        | 12                  |    1          | B2C        |

