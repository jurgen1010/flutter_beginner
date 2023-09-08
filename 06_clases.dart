void main() {
  //Creamos la instancia de nuestra clase, es opcional usar la palabra <new>
  final Hero wolverine = Hero('Logan', 'Regeneracion');

  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  // ? para indicar que ambas propiedades son opcionales, aceptan null
  String? name;
  String? power;

  //Hero(String pName, String pPower)
      /*La palabra reservada this en el contructor es opcional
    name = pName;
    power = pPower;
    */

      /*En el momento que creamos la instancia debemos asignar las propiedades, debemos quitar las llaves
    del constructor y usar <:> 
    */
    //  : name = pName,
    //    power = pPower;

  //Otra manera de definir mi constructor seria
  Hero( this.name, this.power );
}
