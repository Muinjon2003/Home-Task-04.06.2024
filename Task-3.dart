


void main() {
  Cat cat = Cat(1, 'Whiskers', 'Brown', 'Meow');

 
  print(cat);
}

class Animal {
  int id;
  String name;
  String color;


  Animal(this.id, this.name, this.color);


  @override
  String toString() {
    return 'Animal ID: $id, Name: $name, Color: $color';
  }
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);


  @override
  String toString() {
    return '${super.toString()}, Sound: $sound';
  }
}
