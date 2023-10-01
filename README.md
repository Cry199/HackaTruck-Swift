# Curso de Desenvolvimento iOS com Swift
Este repositório contém projetos e exemplos de código de um curso para aprender a desenvolver apps iOS utilizando Swift.

# Inicio

* [Projeto Final](#projeto-final)
  - [Apresentação Do Projeto Em PDF](#apresentação-do-projeto-em-pdf)
  - [Video Do App](#video-do-app)
  - [Aquivo Do App](#aquivo-do-app)
  
* [Fluxo Node-RED](#fluxo-node-red)
  - [Visão Geral](#visão-geral)
  - [Fluxos Principais](#fluxos-principais)
  - [1. Operações CRUD](#1-operações-crud)
  - [2. Watson Speech-to-Text e Text-to-Speech](#2-watson-speech-to-text-e-text-to-speech)
  - [3. Watson Translator](#3-watson-translator)
  - [4. Interface Gráfica](#4-interface-gráfica) 
  
* [Aulas](#aulas)
  - [1 - Introdução ao Swift e Xcode](#1-introdução-ao-swift-e-xcode)
  - [2 - Calculadora de IMC](#2-calculadora-de-imc)
  - [3 - TabBarController](#3-tabbarcontroller)
  - [4 - Lista - Fake app Spotify](#4-lista---fake-app-spotify)
  - [5 - MapKit](#5-mapkit)
  - [6 - Consumindo API Do Don-Red](#6-consumindo-api-do-don-red)
  - [7 - Consumindo API Externa](#7-consumindo-api-externa)

# Projeto Final

### Apresentação Do Projeto Em PDF
[Apresentação Do Projeto](https://github.com/Cry199/HackaTruck-Swift/files/12773897/ApresentacaoFInal.pdf)

### Video Do App 
https://github.com/Cry199/HackaTruck-Swift/assets/56047994/42b7ab95-6982-49fe-892c-cc65b7bc363c

### Aquivo Do App
[Aquivo Do App](https://github.com/Cry199/HackaTruck-Swift/tree/main/SaveMoney/SaveMoney)

# Fluxo Node-RED
Este repositório contém um fluxo de exemplo criado no Node-RED para demonstrar diferentes funcionalidades.

[Fluxo](https://github.com/Cry199/HackaTruck-Swift/blob/main/SaveMoneyNodeRed.json)

## Visão Geral
O fluxo implementa as seguintes operações:

- Endpoints HTTP para operações CRUD básicas (GET, POST, PUT, DELETE) em um banco de dados Cloudant
- Integração com serviços IBM Watson para fala-texto, texto-fala e tradução
- Leitura de múltiplos documentos e extração de valores
- Interface gráfica com gauge para exibição de dados

## Fluxos Principais
O fluxo possui 4 seções principais:

## 1. Operações CRUD
Permite realizar operações básicas de CRUD em um banco de dados Cloudant através de requisições HTTP:

- GET: Lê todos os documentos
- POST: Insere um novo documento
- PUT: Atualiza um documento existente
- DELETE: Remove um documento

## 2. Watson Speech-to-Text e Text-to-Speech
Integração com os serviços Watson para:

- Conversão de áudio em texto
- Síntese de fala a partir de texto
- Usando componentes de áudio como microphone e play audio.

## 3. Watson Translator
Tradução de texto usando o serviço Watson Translator.

- Converte texto de português para inglês e depois para japonês.

## 4. Interface Gráfica
Exibe os valores numéricos em um gauge para visualização.

- Utiliza um node HTTP para atualizar o gauge com os valores lidos do banco de dados.


### Executando Localmente
Para executar o fluxo localmente:

[Fluxo Usado No Curso Todo](https://github.com/Cry199/HackaTruck-Swift/blob/main/SaveMoneyNodeRed.json)

- Instale o Node-RED
- Abra e importe o fluxo flow.json
- Configure as credenciais para o Cloudant e Watson
- Deploy e acesse os endpoints HTTP para testar
- O fluxo pode ser modificado e estendido livremente para adicionar novas funcionalidades.

### Licença
- Este fluxo é disponibilizado gratuitamente sem nenhuma garantia sob os termos da licença MIT.

# Aulas

## 1. Introdução ao Swift e Xcode

- Variáveis, constantes, tipos de dados
- Operadores, condicionais, loops
- Funções
- Classes e structs
- Xcode e interface builder

[Projeto Da Aula 1](https://github.com/Cry199/HackaTruck-Swift/tree/main/Aula-1-Swift/Aula-1-Swift)
 
## 2. Calculadora de IMC

- Criando UI com Auto Layout
- Capturando entrada de usuário
- Funções e lógica de cálculo
- Exibindo resultados formatados
- TabView e Navigation

[Projeto Da Aula 2](https://github.com/Cry199/HackaTruck-Swift/tree/main/Aula-2-Swift/Aula-2-Swift)

## 3. TabBarController
- ViewControllers
- NavigationController
- Passando dados entre telas

[Projeto Da Aula 3](https://github.com/Cry199/HackaTruck-Swift/tree/main/Aula-3-Swift/Aula-3-Swift)
  
## 4. Lista - Fake app Spotify
- TableViews
- Custom cells
- Navigation em lista

[Projeto Da Aula 4](https://github.com/Cry199/HackaTruck-Swift/tree/main/Aula-4-Swift/Aula-4-Swift)

## 5. MapKit

- Mostrar mapa
- Adicionar pontos e anotações
- Recuperar localização do usuário

[Projeto Da Aula 5](https://github.com/Cry199/HackaTruck-Swift/tree/main/Aula-5-Swift/Aula-5-Swift)

## 6. Consumindo API Do Node-RED

- Requisições web com URLSession
- Decodificando JSON
- Exibindo dados de API
- Lidando com imagens

[Projeto Da Aula 6](https://github.com/Cry199/HackaTruck-Swift/tree/main/Aula-6-Swift/Aula-6-Swift)

## 7. Consumindo API Externa

- Requisições web com URLSession
- Decodificando JSON
- Exibindo dados de API
- Lidando com imagens

[Projeto Da Aula 7](https://github.com/Cry199/HackaTruck-Swift/tree/main/aula-7-Swift/aula-7-Swift)

Cada lição possui seu próprio playground ou projeto Xcode demostrando os conceitos apresentados.

## Requisitos

- Xcode 13+
- iOS 15+
- Swift 5+

## Créditos
Criado por Cauã Ribeiro como material de estudo.
