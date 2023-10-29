#language: pt

@PEI
Funcionalidade: Informar que o meu pedido foi incluido
    Sendo cliente Via quero ser informado via email que o
    meu pedido foi incluido quando realizar a minha
    compra online

    @AP1-001
    Esquema do Cenario: Comunicar pedido incluido AP1-001

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-001        | 46                 | 1               | B2C        |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-001        | 40                 | 1               | B2C        |
            | 36023184701 | 360231847 | PEI            | 8               | AP1-001        | 3                  | 1               | B2C        |


    @AP1-003
    Esquema do Cenario: Comunicar pedido incluido AP1-003

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    | 
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-003        | 46                 | 1               | MKTP       |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-003        | 40                 | 1               | MKTP       |
            | 36023184701 | 360231847 | PEI            | 8               | AP1-003        | 3                  | 1               | MKTP       |



    @AP1-008
    Esquema do Cenario: Comunicar pedido incluido AP1-008 pedido incluido com pagamento misto boleto + cdc

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 36054087101 | 360540871 | PEI            | 8               | AP1-008        | 12                 | 1               | MKTP       |
            | 36080370401 | 360803704 | PEI            | 8               | AP1-008        | 12                 | 1               | B2C        |
            | 36069143701 | 360691437 | PEI            | 8               | AP1-008        | 12                 | 1               | B2C        |


    @AP1-009
    Esquema do Cenario: Comunicar Pedido incluido AP1-009 pedido incluido com tipo de entrega SHD 26

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-009        | 3                  | 26              | B2C        |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-009        | 103                | 26              | B2C        |
            | 36023184701 | 360231847 | PEI            | 8               | AP1-009        | 103                | 26              | B2C        |
            | 36023184701 | 360231847 | PEI            | 8               | AP1-009        | 46                 | 26              | B2C        |

    @AP1-009-PIX
    Esquema do Cenario: Não comunicar pedido incluido AP1-009 pedido incluido com pagamento realizado via pix B2C

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao nao devo ser informado via email o calculo da aplicabilidade quando o pedido nao for gravado na sendmessage

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PEI            | 1               | AP1-009        | 102                | 26              | B2C        |
            | 36023184701 | 360231847 | PEI            | 8               | AP1-009        | 102                | 26              | B2C        |



    @AP1-003-PIX
    Esquema do Cenario: Não comunicar pedido incluido AP1-003 pedido incluido com pagamento realizado via pix MKTP

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao nao devo ser informado via email o calculo da aplicabilidade quando o pedido nao for gravado na sendmessage

        Exemplos:
            | id_entrega  | id_pedido   | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539   | PEI            | 1               | AP1-003        | 102                | 1               | MKTP       |
            | 36023184701 | 36023184701 | PEI            | 8               | AP1-003        | 102                | 1               | MKTP       |


