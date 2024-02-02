class CarStart {
  void start() {
    print("Car started");
  }
}

class CarGearChange {
  void changeGear(int) {
    print("Gear changed to ${int}");
  }
}

class CarStop {
  void stop() {
    print("Car stopped");
  }
}

void main() {
  CarStart carStart = CarStart();
  CarGearChange carGearChange = CarGearChange();
  CarStop carStop = CarStop();

  carStart.start();
  carGearChange.changeGear(3);
  carStop.stop();
}
