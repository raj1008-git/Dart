// Complex Transformations.
class Product {
  final String name;
  final double price;
  final bool inStock;

  Product(this.name, this.price, this.inStock);
}

class ProductDisplay {
  final String displayName;
  final String priceTag;
  final String availaility;

  ProductDisplay(this.displayName, this.priceTag, this.availaility);
  @override
  String toString() => '$displayName -$priceTag ($availaility)';
}

void main() {
  var products = [
    Product('Laptop', 899.99, true),
    Product('Mouse', 25.50, true),
  ];

  // Transform Products into display objects.
  var displayProducts = products.map((product) {
    return ProductDisplay(
      product.name,
      'E${product.price.toStringAsFixed(2)}',
      product.inStock ? 'Available' : 'Out of Stock',
    );
  }).toList();

  displayProducts.forEach(print);
}
