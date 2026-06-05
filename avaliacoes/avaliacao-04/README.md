# Avaliação 04 - Comunicação Cliente/Servidor com Sockets

## Enunciado

Como um programador DART, escreva dois programas DART que funcionam da seguinte forma:

Um programa simula um dispositivo IoT que monitora um sensor de temperatura e, a cada 10 segundos, envia a leitura da temperatura para um outro programa servidor que fica recebendo as leituras de temperatura enviadas pelo IoT.

As temperaturas recebidas serão mostradas no terminal.

Implementar a comunicação entre os dois programas usando sockets e funções que viabilizam o assincronismo inerente aos dois programas.

### Entrega

* Postar na pasta `avaliacao-04` o projeto dos dois programas:

  * Cliente (IoT)
  * Servidor
* Capturar a saída apresentada na tela no formato de um print.
* Gravar o print também na pasta `avaliacao-04` do GitHub.

## Arquivos da Solução

```text
avaliacao-04/
├── servidor.dart
├── iot.dart
├── print_resultado.png
└── README.md
```

## Tecnologias Utilizadas

* Dart
* Socket TCP
* Programação Assíncrona
* Future
* Stream
* dart:io

## Funcionamento

O programa `iot.dart` simula um dispositivo IoT que gera leituras de temperatura aleatórias e as envia ao servidor a cada 10 segundos.

O programa `servidor.dart` recebe as temperaturas enviadas pelo cliente e exibe os valores recebidos no terminal.

## Evidência

A execução dos programas pode ser observada no arquivo `print_resultado.png`.
