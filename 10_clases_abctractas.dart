void main (){

     final windPlant = WindPLant( initialEnergy: 100 );
     final nuclearPlant = NuclearPlant( energyLeft: 1000 );

     print(' wind: ${ chargePhone( windPlant ) }' );
     print(' nuclear: ${ chargePhone( nuclearPlant ) }' );
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

//Clase abstracta
abstract class  EnergyPlant {

  double energyLeft;
  final PlantType type;

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

class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  //Final porque nunca va cambiar
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy( double amount) {
      energyLeft -= (amount * 0.5);
  }

}