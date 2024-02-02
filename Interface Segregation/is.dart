abstract class Eater {
  void eat();
}

abstract class Worker {
  void work();
}

class Human implements Eater, Worker {
  @override
  void eat() {
    print("Humans can eat");
  }

  @override
  void work() {
    print("Humans can work");
  }
}

class Robot implements Worker {
  @override
  void work() {
    print("Robots only work");
  }
}

void main() {
  Human human = Human();
  Robot robot = Robot();

  human.eat();
  human.work();
  robot.work();
}
