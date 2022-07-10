void main() {
  var numeroLista = <int?>[];
  numeroLista.add(1);
  numeroLista.add(2);
  numeroLista.add(3);
  numeroLista.add(3);
  numeroLista.add(null);
  numeroLista.add(1);
  numeroLista.add(2);
  print(numeroLista);

  var numeroSet = <int?>{};
  numeroSet.add(1);
  numeroSet.add(2);
  numeroSet.add(3);
  numeroSet.add(3);
  numeroSet.add(null);
  numeroSet.add(1);
  numeroSet.add(2);
  print(numeroSet);

  print('.toSet');
  print(numeroLista.toSet());

  numeroSet.forEach(print);

  var numero1 = {1, 2, 3, 4, 5, 6};
  var numero2 = {1, 3, 4, 7};

//Quais dos numero1 não tem no numero2;
  print(numero1.difference(numero2));

//Quais dos numero2 não tem no numero1;
  print(numero2.difference(numero1));

  print('.union');
  print(numero1.union(numero2));

//Comparando e trazendo os itens que tem em ambas as listas
  print('.intersection');
  print(numero1.intersection(numero2));

  var nome1 = {'Rodrigo', 'Luana', 'José'};
  var nome2 = {'Rodrigo', 'Joaquim', 'Guilherme'};
  print(nome1.intersection(nome2));

  print('.lookup');
  // Ele vai procurar e trazer esse dado para gente, lembrando que ele utiliza equals, ou seja,
  // tudo tem que estar igual.
  // se ele não encontrar retorna null;

  print(numero1.lookup(1));
  print(numero1.lookup(99));
  print(nome1.lookup('Rodrigo'));
  print(nome1.lookup('rodrigo'));
}
