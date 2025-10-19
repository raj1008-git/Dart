// Method Cascade with Higher order functions.
class DataProcessor {
  List<int> data = [];

  void loadData(List<int> newData) {
    data = newData;
  }

  void processData() {
    data = data.map((n) => n * 2).toList();
  }

  void filterData() {
    data = data.where((n) => n > 10).toList();
  }

  void sortData() {
    data.sort();
  }

  void printData() {
    print(data);
  }
}

void main() {
  // Using cascades with higher order function methods.
  var processor = DataProcessor()
    ..loadData([1, 2, 3, 4, 5, 6, 7, 8])
    ..processData()
    ..filterData()
    ..sortData()
    ..printData();
}
