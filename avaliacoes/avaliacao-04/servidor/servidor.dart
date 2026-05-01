import 'dart:io';
import 'dart:convert';

void main() async {
  final server = await ServerSocket.bind(InternetAddress.anyIPv4, 3000);
  print('Servidor rodando em ${server.address.address}:${server.port}');

  await for (Socket cliente in server) {
    print('Cliente conectado: ${cliente.remoteAddress.address}');

    cliente.listen(
      (dados) {
        String mensagem = utf8.decode(dados);
        print('Temperatura recebida: $mensagem °C');
      },
      onDone: () {
        print('Cliente desconectado');
      },
      onError: (erro) {
        print('Erro: $erro');
      },
    );
  }
}