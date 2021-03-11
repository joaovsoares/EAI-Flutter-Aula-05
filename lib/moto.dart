import 'veiculoautomotor.dart';

class Moto extends VeiculoAutomotor {
  @override
  String acelerar()
  {
    return 'Moto.acelerar() executado';
  }

  @override
  String freiar()
  {
    return 'Moto.freiar() executado';
  }

  @override
  int quantidadeRodas = 2;
}
