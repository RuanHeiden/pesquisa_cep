import 'package:pesquisa_cep/src/pesquisa_cep_repository.dart';

import '../pesquisa_cep.dart';

class PesquisaCepServices {
  Future<Cep> consultaCep(String cep) async {
    return await PesquisaCepReponsitory().buscaCep(cep);
  }
}
