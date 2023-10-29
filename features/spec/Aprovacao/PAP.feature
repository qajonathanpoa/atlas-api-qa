#language: pt

Funcionalidade: Informar que o meu pagamento foi aprovado
    Sendo cliente Via quero ser informado via email que o
    meu pagamento foi aprovado quando realizar a minha
    compra online

    @AP2-001
    Esquema do Cenario: Pagamento aprovado AP2-001

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
           | 36023184701 | 360231847 | PAP            | 8               | AP2-001        | 12                 | 21              | B2C        |


    @AP2-002
    Esquema do Cenario: Pagamento aprovado AP2-002

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-003
    Esquema do Cenario: Pagamento aprovado AP2-003

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-005
    Esquema do Cenario: Pagamento aprovado AP2-005

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-007
    Esquema do Cenario: Pagamento aprovado AP2-007

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-008
    Esquema do Cenario: Pagamento aprovado AP2-008

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-011
    Esquema do Cenario: Pagamento aprovado AP2-011

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-013
    Esquema do Cenario: Pagamento aprovado AP2-013

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |


    @AP2-014
    Esquema do Cenario: Pagamento aprovado AP2-014

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |

    @AP2-015
    Esquema do Cenario: Pagamento aprovado AP2-015

        Dado que eu tenho um pedido com as seguintes informações:

            | IdEntrega    | IdPedido    | PontoControle    | IdUnidadeNegocio  | Aplicabilidade   | idFormaPagamento     | idTipoEntrega     | tipoVenda    |
            | <id_entrega> | <id_pedido> | <ponto_controle> | <unidade_negocio> | <aplicabilidade> | <id_forma_pagamento> | <id_tipo_entrega> | <tipo_venda> |
            E confirmo que não exista um pedido nas tabelas do mongo
            E que ele atenda as seguintes condicoes de regra do pedido
        Quando submeto o cadastro desse item em uma fila de pedidos kafka
        Entao devo ser informado via email o calculo da aplicabilidade

        Exemplos:
            | id_entrega  | id_pedido | ponto_controle | unidade_negocio | aplicabilidade | id_forma_pagamento | id_tipo_entrega | tipo_venda |
            | 25456853901 | 254568539 | PAP            | 1               | AP2-001        | 12                 | 1               | B2C        |
