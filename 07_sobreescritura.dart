void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String? name;
  String? power;

  //Para marcar los parametros por nombre debemos usar las llaves { }
  Hero({required this.name, this.power = 'Sin poder'});

  //Sobre_escritura de funcion
  @override
  String toString() {
    
    return '$name - $power';
    
  }
}
