void main() {
  final String superheroe = 'batmam';
  final int edad = 35;
  final bool isVillain = false;

//Listas
  final List<String> abilities = ['sigilo'];
  final sprites = <String>['batman/front.png', 'batman/back.png'];

//Dinamic: cualquier tipo de dato, es como un comodin, acepta nullos
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5, 6];
  errorMessage = {1, 2, 3, 4, 5, 6}; //Sets de datos
  errorMessage = () => true; //puede ser funcion
  errorMessage = null;


//String multilinea
  print("""

    $superheroe
    $edad
    $isVillain
    $abilities
    $sprites
    $errorMessage

  """);
}
