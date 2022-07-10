import 'soma/soma.dart' as soma;
import 'soma_nova/soma_nova.dart' as somaNova;
// import 'package:functions_and_collections/7_imports/soma/soma.dart';
// quando vc faz o import por package ele busca a pasta LIB, como estou dentro da
// pasta bin ele não identifica.
//OBS: quando você está fora da bin fica acusando um erro no terminal.

// Com os alias podemos dar "apelidos" aos imports, nesse exemplo eu tinha
//duas funções com o mesmo nome, em caminhos diferentes, então o dart não entendia
//de qual import eu estava falando.

void main() {
  var result = soma.soma(a: 5, b: 5);
  var resultNovo = somaNova.soma(a: 5, b: 5);
  print(result);
}
