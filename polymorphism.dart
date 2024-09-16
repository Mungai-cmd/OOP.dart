// Superclass
class Shape {
  void draw() {
    print('Drawing a shape');
  }
}

// Subclass 1
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

// Subclass 2
class Square extends Shape {
  @override
  void draw() {
    print('Drawing a square');
  }
}

void main() {
  List<Shape> shapes = [Circle(), Square()];

  for (var shape in shapes) {
    shape.draw();
  }
}
