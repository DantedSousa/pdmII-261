class Pilha {
  List<dynamic> _elementos = [];

  // Empilhar
  void empilhar(dynamic elemento) {
    _elementos.add(elemento);
    print("$elemento foi empilhado.");
  }

  // Desempilhar
  dynamic desempilhar() {
    if (_elementos.isEmpty) {
      print("A pilha está vazia.");
      return null;
    }

    var removido = _elementos.removeLast();
    print("$removido foi desempilhado.");
    return removido;
  }

  // Mostrar topo
  dynamic mostrarTopo() {
    if (_elementos.isEmpty) {
      print("A pilha está vazia.");
      return null;
    }

    print("Topo da pilha: ${_elementos.last}");
    return _elementos.last;
  }

  // Mostrar todos os elementos
  void mostrarElementos() {
    if (_elementos.isEmpty) {
      print("A pilha está vazia.");
      return;
    }

    print("Elementos da pilha:");
    for (int i = _elementos.length - 1; i >= 0; i--) {
      print(_elementos[i]);
    }
  }
}

void main() {
  Pilha pilha = Pilha();

  pilha.empilhar(10);
  pilha.empilhar(20);
  pilha.empilhar(30);

  print("");

  pilha.mostrarTopo();

  print("");

  pilha.mostrarElementos();

  print("");

  pilha.desempilhar();

  print("");

  pilha.mostrarElementos();
}