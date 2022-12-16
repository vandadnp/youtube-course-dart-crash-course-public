void main(List<String> args) {
  print(Car.carsInstantiated);
  Car(name: 'My Car');
  print(Car.carsInstantiated);
  Car(name: 'Your Car');
  print(Car.carsInstantiated);
}

class Car {
  static int _carInstantiated = 0;

  static int get carsInstantiated => _carInstantiated;
  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car({
    required this.name,
  }) {
    _incrementCarsInstantiated();
  }
}
