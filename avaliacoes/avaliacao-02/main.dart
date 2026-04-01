class Pilha<T> {
  List<T> _elementos = [];

  // Empilhar (push)
  void empilhar(T valor) {
    _elementos.add(valor);
    print("Empilhado: $valor");
  }

  // Desempilhar (pop)
  T? desempilhar() {
    if (_elementos.isEmpty) {
      print("Pilha vazia!");
      return null;
    }
    var removido = _elementos.removeLast();
    print("Desempilhado: $removido");
    return removido;
  }

  // Mostrar topo (peek)
  T? topo() {
    if (_elementos.isEmpty) {
      print("Pilha vazia!");
      return null;
    }
    return _elementos.last;
  }

  // Mostrar todos os elementos
  void mostrar() {
    print("Pilha: $_elementos");
  }

  // Verificar se está vazia
  bool estaVazia() {
    return _elementos.isEmpty;
  }
}

void main() {
  Pilha<int> pilha = Pilha<int>();

  print("=== Teste da Pilha ===");

  // Empilhar
  pilha.empilhar(10);
  pilha.empilhar(20);
  pilha.empilhar(30);

  // Mostrar pilha
  pilha.mostrar();

  // Mostrar topo
  print("Topo da pilha: ${pilha.topo()}");

  // Desempilhar
  pilha.desempilhar();
  pilha.mostrar();

  pilha.desempilhar();
  pilha.mostrar();

  pilha.desempilhar();
  pilha.mostrar();

  // Teste pilha vazia
  pilha.desempilhar();
}