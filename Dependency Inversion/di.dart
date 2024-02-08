//! Dependency Inversion Principle (DIP): High-level modules should not depend on low-level modules. Both should depend on abstractions.

abstract class Switchable {
  void switchOn();
  void switchOff();
}

class Light implements Switchable {
  @override
  void switchOff() {
    print("Light is off");
  }

  @override
  void switchOn() {
    print("Light is on");
  }
}

class Button {
  Switchable switchable;
  Button(
    this.switchable,
  );

  void press() {
    switchable.switchOff();
    switchable.switchOn();
  }
}

void main() {
  Light light = Light();
  Button button = Button(light);

  button.press();
}
