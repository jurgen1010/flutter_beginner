void main() {
  final numbers = [1, 2, 3, 4, 4, 5, 6, 6, 7, 8, 9, 10];

  print('List original ${numbers.toSet().toList()}');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  //Set de datos
  print('Set: ${reversedNumbers.toSet()}'); //Listado sin valores duplicados {.. , ..}

  //Iterables: coleccion de datos que permite ser recorrida.
  final numbersGreaterThan5 = numbers.where((int number) {
    return number > 5;
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet() }');
}
