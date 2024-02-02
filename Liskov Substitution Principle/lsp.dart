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

void main() {
  Ostrich ostrich = Ostrich();
  Sparrow sparrow = Sparrow();

  makeBirdFly(ostrich);
  makeBirdFly(sparrow);
}
