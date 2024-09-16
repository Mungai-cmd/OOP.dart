// Superclass
class Animal {
  void speak() {
    print('Animal makes a sound');
  }
}

// Subclass
class Dog extends Animal {
  @override
  void speak() {
    print('Dog barks');
  }
}

void main() {
  var myDog = Dog();
  myDog.speak();  // Outputs: Dog barks
}
