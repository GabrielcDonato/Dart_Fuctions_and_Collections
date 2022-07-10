void main() {
  // var lista = ['Gabriel'];
  // print(lista.hashCode);
  // print(lista);

  // funcao(lista);
  // print(lista);

  // var nome = "Gabriel";
  // print(nome);
  // print(nome.hashCode);
  // funcao2(nome);

  // print(nome);
  // print(nome.hashCode);

  var list = ['Gabriel'];
  print(list);
  add(list);
  print(list);

  var listaDeProdutos = ['Prod'];
  print(listaDeProdutos);
  var valor = calculaCarrinho(listaDeProdutos);
  print(valor);
  print(listaDeProdutos);
}

int calculaCarrinho(List<String> produtos) {
  produtos.clear();
  return 10;
}

void funcao2(String nome) {
  nome += 'Donato';
  print(nome);
  print(nome.hashCode);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Gabriel Donato');
  print(novoNomes);
  return novoNomes;
}
