

void main() {
  Camera camera1 = Camera(1, 'Canon', 'Black', 500.0);
  Camera camera2 = Camera(2, 'Nikon', 'Red', 450.0);
  Camera camera3 = Camera(3, 'Sony', 'Silver', 600.0);


  print(camera1);
  print(camera2);
  print(camera3);
}

class Camera {

  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

 
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  // Setters
  set id(int id) => _id = id;
  set brand(String brand) => _brand = brand;
  set color(String color) => _color = color;
  set price(double price) => _price = price;

 
  @override
  String toString() {
    return 'Camera ID: $id, Brand: $brand, Color: $color, Price: \$$price';
  }
}
