// Traditional approach. We have lots of code for the simple task.

void traditionalWay() {
  var numbers = [1, 2, 3, 4, 5];

  // Task : Double all the numbers.
  var doubled = <int>[];
  for (var num in numbers) {
    doubled.add(num * 2);
  }
  print(doubled);

  // Task: Get only Even Numbers.
  var evens = <int>[];
  for (var num in numbers) {
    if (num % 2 == 0) {
      evens.add(num);
    }
  }

  // Task: Sum all Numbers.
  var sum = 0;
  for (var num in numbers) {
    sum += num;
  }
  print(sum);
}
