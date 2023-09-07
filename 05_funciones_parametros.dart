main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(10, 40)}');
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

//elvolvemos el parametro con  [  ]
int addTwoNumbersOptional(int a, [ int b = 0 ]) {

//  b ??= 0; forma en la que podemos asignar valor de 0 por defecto cuando no es definido

  return a + b;
}
