main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(10, 40)}');

  print(greetPerson(name: 'Jurgen', message: 'Hi'));
}

// funcion flecha no tiene cuerpo { .... }
String greetEveryone() => 'Hello everyone';

/*
int addTwoNumbers(int a, int b) {
  return a + b;
}
*/

//Ahora addTwoNumbers en funcion tipo flecha (lambda funcion)
int addTwoNumbers(int a, int b) => a + b;

//envolvemos el parametro con  [  ] para que sea un parametro opcional
int addTwoNumbersOptional(int a, [int b = 0]) {
//  b ??= 0; forma en la que podemos asignar valor de 0 por defecto cuando no es definido

  return a + b;
}

// Como recibir parametros sin orden especifico, envolermos los params en {  }

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message $name ';
}
