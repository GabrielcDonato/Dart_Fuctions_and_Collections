void main() {
  // const cor = 'vermelho';
  var cor = Cores.vermelho;
  print(cor);

  // var azul = 'preto';
  var azul = 'azul';

// Transformando a string azul em um enum Cores.azul.
// Antes da versão 2.15
  var corAzul =
      Cores.values.where((element) => element.toString() == 'Cores.$azul');
  print(corAzul);

  // 2.15
  print(Cores.azul.name);
  var corAzul_2_15 = Cores.values.byName(azul);
  print(corAzul_2_15);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap['azul'];
  print(corAzulPeloMap);

  // print(Cores.values.byName('branco')); Erro de argumento, pois a cor
  // branca não existe.

  var corBranco = coresNameMap['branco'];
  print(corBranco);

  // Já no nosso map quando o valor não existe ele nos retorna null.
}

enum Cores { azul, vermelho, laranja, verde, preto }
