import 'package:dio/dio.dart';

import 'model.dart';

class PesquisaCepReponsitory {
  Future<Cep> buscaCep(String cep) async {
    var response = await Dio().get("https://viacep.com.br/ws/$cep/json/");
    return Cep.fromJson(response.data);
  }
}
