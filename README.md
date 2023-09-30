# Curso de Desenvolvimento iOS com Swift
Este repositório contém projetos e exemplos de código de um curso para aprender a desenvolver apps iOS utilizando Swift.

# Index

* [Lições](#lições)


# Projeto Final


# Fluxo Node-RED de Exemplo
Este repositório contém um fluxo de exemplo criado no Node-RED para demonstrar diferentes funcionalidades.

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

- Instale o Node-RED
- Abra e importe o fluxo flow.json
- Configure as credenciais para o Cloudant e Watson
- Deploy e acesse os endpoints HTTP para testar
- O fluxo pode ser modificado e estendido livremente para adicionar novas funcionalidades.


# Lições
## 1 - Introdução ao Swift e Xcode

- Variáveis, constantes, tipos de dados
- Operadores, condicionais, loops
- Funções
- Classes e structs
- Xcode e interface builder
 
## 2 - Calculadora de IMC

- Criando UI com Auto Layout
- Capturando entrada de usuário
- Funções e lógica de cálculo
- Exibindo resultados formatados
- TabView e Navigation

## 3 - TabBarController
- ViewControllers
- NavigationController
- Passando dados entre telas
  
## 4 - Lista - Fake app Spotify
- TableViews
- Custom cells
- Navigation em lista

## 5 - MapKit

- Mostrar mapa
- Adicionar pontos e anotações
- Recuperar localização do usuário

## 6 - Consumindo API Do Don-Red

- Requisições web com URLSession
- Decodificando JSON
- Exibindo dados de API
- Lidando com imagens

## 7 - Consumindo API Externa

- Requisições web com URLSession
- Decodificando JSON
- Exibindo dados de API
- Lidando com imagens

Cada lição possui seu próprio playground ou projeto Xcode demostrando os conceitos apresentados.

## Requisitos

- Xcode 13+
- iOS 15+
- Swift 5+

## Créditos
Criado por Cauã Ribeiro como material de estudo.
