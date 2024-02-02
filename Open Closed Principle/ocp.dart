void main() {
  Discount birthdayDiscount = BirthdayDiscount();
  Discount holidayDiscount = HolidayDiscount();
  DiscountCalculator discountCalculator = DiscountCalculator();

  double amount = 100;

  print(discountCalculator.applyDiscount(birthdayDiscount, amount));
  print(discountCalculator.applyDiscount(holidayDiscount, amount));
}

abstract class Discount {
  double calculate(double amount);
}

class BirthdayDiscount implements Discount {
  @override
  double calculate(double amount) {
    return 0.1 * amount;
  }
}

class HolidayDiscount implements Discount {
  @override
  double calculate(double amount) {
    return 0.3 * amount;
  }
}

class DiscountCalculator {
  double applyDiscount(Discount discount, double amount) {
    return discount.calculate(amount);
  }
}
