//! Liskov Substitution Principle (LSP): Objects in a program should be replaceable with instances of their subtypes without altering the correctness of that program.

abstract class Bird {
  void fly();
}

class Ostrich implements Bird {
  @override
  void fly() {
    print("Ostrich is flying");
  }
}

class Sparrow implements Bird {
  @override
  void fly() {
    print("Sparrow can fly");
  }
}

void makeBirdFly(Bird bird) {
  bird.fly();
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() => width * height;
}

class Square extends Rectangle {
  Square(double side) : super(side, side);

  @override
  set width(double newValue) {
    super.width = super.height = newValue;
  }

  @override
  set height(double newValue) {
    super.height = super.width = newValue;
  }
}

void main() {
  Ostrich ostrich = Ostrich();
  Sparrow sparrow = Sparrow();

  makeBirdFly(ostrich);
  makeBirdFly(sparrow);

  Rectangle rectangle = Rectangle(10, 20);
  Square square = Square(10);

  print(rectangle.area());
  print(square.area());
}
