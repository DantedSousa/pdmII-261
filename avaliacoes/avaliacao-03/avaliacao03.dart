import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    this._nome = nome;
  }

  Map<String, dynamic> toJson() {
    return {'nome': _nome};
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    this._nome = nome;
    this._dependentes = dependentes;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((d) => d.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeProjeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeProjeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((f) => f.toJson()).toList(),
    };
  }
}

void main() {
  // 1. Criar dependentes
  var dep1 = Dependente("Ana");
  var dep2 = Dependente("Carlos");
  var dep3 = Dependente("Maria");
  var dep4 = Dependente("João");

  // 2. Criar funcionários
  var func1 = Funcionario("Pedro", [dep1, dep2]);
  var func2 = Funcionario("Lucas", [dep3]);
  var func3 = Funcionario("Fernanda", [dep4]);

  // 3. Lista de funcionários
  List<Funcionario> funcionarios = [func1, func2, func3];

  // 4. Criar equipe de projeto
  var equipe = EquipeProjeto("Projeto X", funcionarios);

  // 5. Printar em JSON
  String jsonString = jsonEncode(equipe.toJson());
  print(jsonString);
}