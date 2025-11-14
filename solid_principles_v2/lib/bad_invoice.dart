class BadInvoice {
  final List<double> items;
  final double taxRate;

  BadInvoice(this.items, {this.taxRate = 0.0});

  double calculateTotal() {
    final subTotal = items.fold(0.0, (a, b) => a + b);
    return subTotal + subTotal * taxRate;
  }

  // Responsibility 2: formatting and printing. (I/O- like)
  String renderForPrinting() {
    final subTotal = items.fold(0.0, (a, b) => a + b);
    final total = calculateTotal();
    return 'SubTotal: \$${subTotal.toStringAsFixed(2)}\n'
        'Tax: ${(subTotal * taxRate).toStringAsFixed(2)}\n'
        'Total: \$${total.toStringAsFixed(2)}';
  }
}
