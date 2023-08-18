class Car {
  static int numberOfCars = 0;
  String brand;
  String model;
  int year;
  double mileDriven;

  Car(
      {required this.brand,
      required this.model,
      required this.year,
      required this.mileDriven}) {
    numberOfCars++;
  }
  void drive(double miles) {
    mileDriven += miles;
  }

  double getMilesDriven() {
    return mileDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car(brand: 'Toyta', model: 'Camry', year: 2020, mileDriven: 10000);
  Car car2 = Car(brand: 'Honda', model: 'Civic', year: 2018, mileDriven: 8000);
  Car car3 = Car(brand: 'Ford', model: 'F-150', year: 2015, mileDriven: 15000);

  print(
      "Car 1: ${car1.brand} ${car1.model} ${car1.year} Miles: ${car1.mileDriven} Age: ${car1.getAge()}");
  print(
      "Car 2: ${car2.brand} ${car2.model} ${car2.year} Miles: ${car2.mileDriven} Age: ${car2.getAge()}");
  print(
      "Car 3: ${car3.brand} ${car3.model} ${car3.year} Miles: ${car3.mileDriven} Age: ${car3.getAge()}");
  print('Total number of cars created: ${Car.numberOfCars}');
}
