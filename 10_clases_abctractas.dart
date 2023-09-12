void main (){

     final windPlant = WindPLant( initialEnergy: 100 );

     print(' wind: ${ chargePhone( windPlant ) }' );
}

//De esta manera puedo aplicar un proncipio SOLID
//Inversion de dependencias: modulos de alto nivel no dependen de implementaciones concetras
//En cambio las implementaciones dependen de abtracciones generales
double chargePhone ( EnergyPlant plant ) {

  if (plant.energyLeft < 10 ) {
    throw Exception('Not enought energy');
  }

  return plant.energyLeft - 10;
}

//Enumeracion
enum PlantType { nuclear, wind, water }

abstract class  EnergyPlant {

  double energyLeft;
  PlantType type;

  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });

  void consumeEnergy ( double amount );
}

//extends o implements
class WindPLant extends EnergyPlant {

  //Tomammos el constructor del padre
  WindPLant( { required double initialEnergy})
    : super( energyLeft : initialEnergy,  type:  PlantType.wind);
  
  //Hacemos la implementacion del consumeEnergy
  @override
  void consumeEnergy( double amount) {
      energyLeft -= amount;
  }
}