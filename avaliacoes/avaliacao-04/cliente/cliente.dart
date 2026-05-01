import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() async {
  final socket = await Socket.connect('127.0.0.1', 3000);
  print('Conectado ao servidor');

  final random = Random();

  Timer.periodic(Duration(seconds: 10), (timer) {
    double temperatura = 20 + random.nextDouble() * 15;

    socket.write(temperatura.toStringAsFixed(2));
    print('Enviado: ${temperatura.toStringAsFixed(2)} °C');
  });
}