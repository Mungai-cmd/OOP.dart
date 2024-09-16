import 'dart:math';

// Abstract class
abstract class Shape {
  // Abstract method to calculate area
  double calculateArea();
  
  // Abstract method to calculate perimeter
  double calculatePerimeter();
}

// Concrete class implementing Shape
class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

// Concrete class implementing Shape
class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create instances of Circle and Rectangle
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  // Calculate and print areas and perimeters
  print('Circle:');
  print('Area: ${circle.calculateArea()}');
  print('Perimeter: ${circle.calculatePerimeter()}');
  
  print('\nRectangle:');
  print('Area: ${rectangle.calculateArea()}');
  print('Perimeter: ${rectangle.calculatePerimeter()}');
}
