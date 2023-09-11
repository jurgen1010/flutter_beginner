void main() {

  final mySquare = Square( side: -2 );

  //mySquare.side = 5;

  print( 'área:  ${ mySquare.area  }' );
}

class Square {

  // _ para indicar que es un atributo privado
  double _side; // side * side

  //constructor
  Square ( { required double side })
      : assert (side >= 0, 'side must be >= 0'),
        _side = side;

  //Getters
  double get area {
    return _side * _side;
  }

  //Setter
  set side( double value ){
    
    print ('setting new value $value');
    if ( value < 0 ) throw 'value must be >= 0';

    _side = value;
  }

  double calculateArea (){
    return _side * _side;
  }
}