void main() {
  // Mapa é uma representação de chave e valor  CHAVE:VALOR
  final paciente = <String, String>{
    'nome': 'Gabriel Donato',
    'curso': 'Academia do Flutter'
  };

//O mapa pode ser nulo mas se for criado deve conter a chave
//e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;

//O mapa e o valor não podem ser nulos mas a chave pode ser nula
  var pacienteNullSafety2 = <String?, String>{
    null: 'Gabriel Donato',
    null: 'Academia do Flutter',
  };

  print(pacienteNullSafety2[null]);

//O mapa e a chave não podem ser nulos mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
    'curso': null,
  };

  var produtos = <String, String>{};
  //Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Refrigerante');

  print(produtos);

  produtos.update('nome', (valor) => 'Refrigerante');
  print(produtos);
  produtos.update(
    'preco',
    (valor) => '10',
    ifAbsent: () => '10',
  );

  //Recuperando o valor;

  print('Produto ${produtos['nome']}');
  print('Preço ${produtos['preco']}');
  print('map produtos $produtos');

  //Varrer todos os itens dentro do nosso map:

//O forEach não pode ser utilizado, se for fazer alguma requisição  assicrona,
//aqui dentro:
  produtos.forEach((key, value) {
    print('Chave: $key, Valor: $value');
  });

// Para isso utilizamos o forIn, utilizado para fazer algum processo assincrono
// dentro dele ( body );
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}  Valor: ${entry.value}');
  }

// Varrer somente as chaves:
  for (var keys in produtos.keys) {
    print('Chave: $keys');
  }

// Varrer somente os valores:
  for (var values in produtos.values) {
    print('Valor: $values');
  }

  produtos.putIfAbsent('marca', () => 'coca cola');

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova_chave', value.toUpperCase());
  });

  print(novoMapaProdutos);

//Object pode receber qualquer coisa é o 'Pai' de todas as classes em dart.
  var mapa = <String, dynamic>{
    'nome': 'Gabriel Donato',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Curso do Rodrigo Rahman ensinando Dart e Flutter'
      },
      {
        'nome': 'Flutterando MasterClass',
        'descricao': 'Curso do Jacob Moura ensinando Dart e Flutter'
      },
    ],
    'teste': {'testes': 1},
  };

  print('${mapa['cursos'][0]['nome']}');
  print('${mapa['teste']['testes']}');
}
