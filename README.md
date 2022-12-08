<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


Um pacote basico de pesquisa de CEP

## Features

 Retornar as seguintes informações de um cep;
  - Logradouro
  - Complemento
  - Bairro
  - Localidade
  - Unidade da Federação (UF)
  - IBGE
  - GIA
  - DDD
  - SIAFI

## Getting started


Inclua o via_cep_search em seu projeto no arquivo pubspec.yaml
 - via_cep_search: 1.0.0

Importe o via_cep_serach no arquivo que sera usado
 - import 'package:via_cep_search/via_cep_search.dart'; 
 
## Usage

Para obter mais informalçoesdo CEP, siga o exemplo a baixo;

```dart
String myCEP = '01001000';
ViaCepSearch.getInstance(myCEP);
```

## Additional information

Este pacote foi desenvolvido com ajuda do Flutterando, a maior comunidade de desenvolvedores de flutter do Brasil.

O pacote é bem simples, mas funcional naquilo que foi proposto a fazer.


