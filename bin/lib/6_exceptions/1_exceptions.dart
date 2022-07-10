void main() {
  var idade = '19';
  String? name;
  var parseIdade = int.parse(idade);

  try {
    if (parseIdade == 19) {
      throw Exception();
    }
    // name = 1 as dynamic;
    name!.toUpperCase();
    // int.parse(idade);
  } on FormatException {
    print('Erro ao converter idade');
  } on TypeError catch (e, s) {
    print(s);
    print(e);
    print('Erro ao converter Nome');
  } on Exception {
    print("erro idade == 19");
  } catch (erro) {
    print(erro);
    print('Erro ao executar o programa');
  } finally {
    print('finally');
  }
}
//posso deixar o ON CATCH sem o catch se eu não quiser pegar o error e stacktrace
//o finally sempre é executado, não importa se teve ou não um erro.
