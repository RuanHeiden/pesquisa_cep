import 'package:flutter_test/flutter_test.dart';
import 'package:pesquisa_cep/pesquisa_cep.dart';
import 'package:pesquisa_cep/src/model.dart';

void main() {
  test('consumir api viacep', () async {
    final viacrepSearch = await PesquisaCepServices().consultaCep("69005180");
    expect(viacrepSearch, isA<Cep>());
  });
}
