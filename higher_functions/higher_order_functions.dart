void main() {
  var prices = [10.0, 25.5, 30.0, 15.75];

  // Add 20 % vat to each prices.
  var priceWithVat = prices.map((price) => price * 1.20).toList();
  print(priceWithVat);

  //Format as currency
  var formatted = prices
      .map((price) => 'E${price.toStringAsFixed(2)}')
      .toList();

  // Multiple Transformation.
  var finalPrices = prices
      .map((price) => price * 1.2)
      .map((price) => price.round())
      .toList();
  print(finalPrices);
}
