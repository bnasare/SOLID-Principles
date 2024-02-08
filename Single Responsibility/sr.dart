//! Single Responsibility Principle (SRP): A class should have one, and only one, reason to change.

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

class Invoice {
  double calculateTotal() {
    return 100;
  }
}

void main() {
  CarStart carStart = CarStart();
  CarGearChange carGearChange = CarGearChange();
  CarStop carStop = CarStop();

  carStart.start();
  carGearChange.changeGear(3);
  carStop.stop();

  Invoice invoice = Invoice();
  double total = invoice.calculateTotal();
  print("Total: ${total}");
}
