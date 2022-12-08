import 'package:flutter/material.dart';
import 'package:pesquisa_cep/pesquisa_cep.dart';
// ignore: depend_on_referenced_packages
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() {
  runApp(const MyApp());

  //getIt.registerSingleton<Cep>(Cep());
  getIt.registerSingleton<PesquisaCepServices>(PesquisaCepServices());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pesquisa CEP Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pesquisa CEP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final getItPesquisaCepServices = getIt<PesquisaCepServices>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: getItPesquisaCepServices.consultaCep('01001000'),

          ///PesquisaCepServices.consultaCep('01001000'),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Text('Cep Invalido');
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Logradouro: ${snapshot.data!.logradouro}'),
                  Text('Complemento: ${snapshot.data!.complemento}'),
                  Text('Bairro: ${snapshot.data!.bairro}'),
                  Text('Localidade: ${snapshot.data!.localidade}'),
                  Text('Unidade da Federação (UF): ${snapshot.data!.uf}'),
                  Text('IBGE: ${snapshot.data!.ibge}'),
                  Text('GIA: ${snapshot.data!.gia}'),
                  Text('DDD: ${snapshot.data!.ddd}'),
                  Text('SIAFI: ${snapshot.data!.siafi}'),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
