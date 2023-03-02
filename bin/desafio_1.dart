import 'dart:io';

/*O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.*/

void main(List<String> arguments) {
  print('Digite a altura, use ponto ao invés de vírgula. Ex. 1.80');
  String height = stdin.readLineSync() ?? '';
  print('Digite o peso, use ponto ao invés de vírgula. Ex. 80.2');
  String weight = stdin.readLineSync() ?? '';

  var _height = double.tryParse(height);
  var _weight = double.tryParse(weight);

  if (_height != null && _weight != null) {
    var result = _weight / (_height * _height);
    print('Seu IMC é $result.');
  } else {
    print('As entradas não eram números válidos');
  }
}
