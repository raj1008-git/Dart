class Order {
  final double amount;
  final DiscountStrategy? discountStrategy;

  Order({required this.amount, this.discountStrategy});
}

// Abstraction: The contract for any discount calculation.
abstract class DiscountStrategy {
  double calculateDiscount(double amount);
  String get discountName;
}

// Existing Implementations, Closed for modifications.
class StudentDiscount implements DiscountStrategy {
  @override
  double calculateDiscount(double amount) {
    return amount * 0.10;
  }

  @override
  String get discountName => 'Student Discount';
}

class EmployeeDiscount implements DiscountStrategy {
  @override
  double calculateDiscount(double amount) {
    return amount * 0.20;
  }

  @override
  String get discountName => 'Employee Discount';
}

// new Requirement: Add VIP and Military Disounts.
// Just add new classes- no modifications to existing code.
class MilitaryDiscount implements DiscountStrategy {
  @override
  double calculateDiscount(double amount) {
    return amount * 0.24;
  }

  @override
  String get discountName => 'Military Discount';
}

// Even more complex discounts easy to add.
class SeasonalDiscount implements DiscountStrategy {
  final double percentage;
  final String season;

  SeasonalDiscount({required this.percentage, required this.season});
  @override
  double calculateDiscount(double amount) {
    return amount * percentage;
  }

  @override
  String get discountName => '$season Seasonal Discount';
}

// Calculator: This class is closed for modifications.
class DiscountCalculator {
  double calculateDiscount(Order order) {
    if (order.discountStrategy == null) {
      return 0;
    }
    return order.discountStrategy!.calculateDiscount(order.amount);
  }

  double getFinalAmount(Order order) {
    return order.amount - calculateDiscount(order);
  }

  String getDiscountInfo(Order order) {
    if (order.discountStrategy == null) {
      return 'No Discount Applied';
    }
    return '${order.discountStrategy!.discountName} apploed';
  }
}
