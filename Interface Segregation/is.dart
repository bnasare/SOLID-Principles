//! Interface Segregation Principle (ISP): Many client-specific interfaces are better than one general-purpose interface.

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

abstract class Printer {
  void printDocument();
}

abstract class Scanner {
  void scanDocument();
}

class SimplePrinter implements Printer {
  @override
  void printDocument() {
    // Print logic
  }
}

class MultiFunctionMachine implements Printer, Scanner {
  @override
  void printDocument() {
    // Print logic
  }

  @override
  void scanDocument() {
    // Scan logic
  }
}

void main() {
  Human human = Human();
  Robot robot = Robot();
  SimplePrinter simplePrinter = SimplePrinter();
  MultiFunctionMachine multiFunctionMachine = MultiFunctionMachine();

  simplePrinter.printDocument();
  human.eat();
  human.work();
  robot.work();
  multiFunctionMachine.printDocument();
  multiFunctionMachine.scanDocument();
}
