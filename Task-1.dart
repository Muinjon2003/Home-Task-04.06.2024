// ../bin/Task-1.dart


void main() {
  House house1 = House(1, 'Villa', 500000);
  House house2 = House(2, 'Cottage', 300000);
  House house3 = House(3, 'Bungalow', 750000);

  List<House> houses = [house1, house2, house3];

  for (var house in houses) {
    print(house);
  }
}

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  @override
  String toString() {
    return 'House ID: $id, Name: $name, Price: \$$price';
  }
}
