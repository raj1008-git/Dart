class InvoiceModel {
  final List<double> items;
  final double taxRate;

  InvoiceModel(this.items, {this.taxRate = 0.0});
}
