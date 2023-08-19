void main() {

  //var myName = 'Jurgen';
  String myName = 'Jurgen';

  //Inicializacion tardia <late>

  //<const> se asigna en tiempo de construccion, porque ejemplo se usa cuando sé que nunca cambiará desde que construyo mi app
  //<final> se asigna en tiempo de ejecucion ,por ejemplo en determinado punto de ejecución yo necesito calcular su valor se recomienda usar final

  late final myLastname = 'Perez';

  print('Hola $myName $myLastname');

  //Interpolacion de string que abarca mas de un valor de la vble usamos ${}, en caso contrario bastara con solo $
  print( 'Hola ${ myName.toUpperCase() }');
  print( 'Hola ${ 1 + 1 }');
}
