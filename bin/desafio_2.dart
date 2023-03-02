/*Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), 
é uma sequência de números inteiros, começando normalmente por 0 e 1, 
na qual cada termo subsequente corresponde à soma dos dois anteriores. 
A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais 
conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento 
de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, 
conhecida na antiguidade.

1,1,2,3,5,8,13,21,34,55,89

Implemente a sequencia fibonacci com funcões recursivamente usando o Dart.*/

import 'dart:io';

void main(List<String> arguments) {
  List<int> fibonacci = [];
  print('Digite quantos números da sequëncia deseja ver.');
  var maxLength = int.tryParse(stdin.readLineSync() ?? '0');

  if (maxLength == null) {
    return;
  }

  if (maxLength <= 0) {
    return;
  }

  while (fibonacci.length < maxLength) {
    if (fibonacci.isEmpty || fibonacci.length == 1) {
      fibonacci.add(1);
    } else {
      int result = fibonacci[fibonacci.length - 1] + fibonacci[fibonacci.length - 2];
      fibonacci.add(result);
    }
  }

  print(fibonacci);
}
