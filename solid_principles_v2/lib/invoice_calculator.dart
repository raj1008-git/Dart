import 'package:solid_principles_v2/invoice_model.dart';

class InvoiceCalculator {
  double subTotal(InvoiceModel invoice) =>
      invoice.items.fold(0.0, (a, b) => a + b);

  double total(InvoiceModel invoice) {
    final s = subTotal(invoice);
    return s + s * invoice.taxRate;
  }

  double taxAmount(InvoiceModel invoice) {
    return subTotal(invoice) * invoice.taxRate;
  }
}
