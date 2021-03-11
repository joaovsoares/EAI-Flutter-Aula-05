import 'package:flutter/material.dart';
import 'veiculoautomotor.dart';
import 'moto.dart';

void main() {
  runApp(MyApp());
}

String gerarTextoExibicao() {
  var resultado = '';

  //Tipos Básicos
  var listaDeString = <String>[];

  listaDeString.add('Uma string');
  listaDeString.add('outra string');
  
  resultado += 'Primeiro for\n';
  for (var indice = 0; indice < listaDeString.length; indice++) {
    resultado += listaDeString[indice] + '\n';
  }

  resultado += '\nSegundo for\n';
  for (var itemLista in listaDeString) {
    resultado += itemLista + '\n';
  }

  //Outros tipos de dados
  var listaVeiculos = <VeiculoAutomotor>[];
  listaVeiculos.add(new VeiculoAutomotor());
  listaVeiculos.add(new Moto());

  resultado += '\Terceiro for\n';
  for (var itemLista in listaVeiculos) {
    resultado += itemLista.acelerar() + '\n';
  }

  return resultado;
}

String gerarTextoExibicaoMapa() {
  var resultado = '';

  //Tipos básicos
  var mapaStringString = new Map<String, String>();

  mapaStringString['chave1'] = 'Valor qualquer';
  mapaStringString['outra chave'] = 'Outro valor qualquer';

  if (mapaStringString.containsKey('chave1')) {
    resultado += mapaStringString['chave1'] + '\n' + mapaStringString['outra chave'];
  }

  return resultado;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var titulo = 'EAI Flutter - Aula 5';
    var textoExibicao = gerarTextoExibicaoMapa();

    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: Center(
          child: Text(textoExibicao),
        ),
      ),
    );
  }
}