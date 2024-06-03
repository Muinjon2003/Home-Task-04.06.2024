

void main() {
  Laptop laptop1 = Laptop(1, 'Dell XPS 13', 16);
  Laptop laptop2 = Laptop(2, 'MacBook Air', 8);
  Laptop laptop3 = Laptop(3, 'Lenovo ThinkPad', 32);

  print(laptop1);
  print(laptop2);
  print(laptop3);
}

class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  @override
  String toString() {
    return 'Laptop ID: $id, Name: $name, RAM: ${ram}GB';
  }
}
