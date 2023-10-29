# atlas-api-qa 
Projeto de automação de testes do Atlas. 

## Inicialização
Esta stack utiliza as seguintes ferramentas:
1.  [Ruby](https://rubyinstaller.org/)
2.	[Cucumber](https://cucumber.io/)
3.	[Rspec](https://github.com/rspec/rspec)
4.  [Git](https://git-scm.com/download/win)


### Pré requisitos
Necessário instalar o [Ruby](https://rubyinstaller.org/) na versão mais recente e em seguida rodar os comandos através terminal:

```
gem install bundler --force
```

### Instalação
>Clone o projeto no diretório de interesse e abra o terminal dentro da pasta do projeto:
```
git clone https://github.com/viavarejo-internal/atlas-api-qa
```
>Execute o comando abaixo para realizar a instalação das dependencias:
```
bundle install
```

# Executando os Testes
>Após a instalação das dependências e configuração do ambiente, vamos executar os testes:
```
rake test[tags]
```
###### Parâmetros
1.  **tags:** @PAP, @PEI, @ROT, @ENT

## Estrutura do projeto 

#### Pasta features

 > * step_definitions - Pasta que contém os arquivos com a implementação dos métodos para execução dos cenários
 > > * xxxxx_steps.rb - Arquivos que contém a implementação dos métodos mencionados acima
 > * specs - Pasta que contém os cenários de teste em BDD
 > > * xxxxx.feature - Arquivos que contém as especificações das funcionalidades e estórias de usuário em BDD

#### Pasta support
> * pedidos_api.rb - Arquivo que contém metodos de acesso e tratamento a querys de consumo da api massa de pedidos para criar as massas dos cenários
> * kafka.rb - Arquivo que contém métodos de envio para as filas do Kafka
> * mongo_base.rb - Arquivo que contém métodos que parametrizam ações do mongo no projeto, como consultar documentos,acessar a base e etc
> * mongo_scripts.rb - Arquivo que contém métodos de consulta, deleção, inserção e etc nas collections do mongo 
> * helpers.rb - Arquivo que contém metodo para tratamento e criação do payloads no Kafka
> * App.rb - Arquivo que contém métodos que instanciam as classes do projeto, onde podemos invocar a variavel @app para acessar os atributos desses métodos e classes

## Documentação do framework
- [Documentação Framework](http://confluence.viavarejo.com.br/pages/viewpage.action?pageId=118368797)