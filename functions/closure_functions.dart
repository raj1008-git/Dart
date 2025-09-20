// Closure Functions //

// This is a Regular Function.
// void sayHello() {
//   print('Hello');
// }

// void executeFunction(void Function() function) {
//   print('About to run a function..');
//   function();
// }

// void main() {
//   // Function assigned to a variable
//   void Function() greetingFunction = sayHello;

//   greetingFunction();
//   executeFunction(greetingFunction);
// }

// Traditional Approach. -> You Tell Each waiter exactly what to do.
// void serveMorningShift() {
//   print('Good Morning! Coffee today?');
// }

// void serveEveningShift() {
//   print('Good Evening! Wine with dinner?');
// }

// //Closure Approach. -> You give each waiter the greeting card they use.

// void Function() morningGreeting = () => print('Good Morning! Coffee today?');
// void Function() eveningGreeting = () =>
//     print('Good Evening! Wine with Dinner?');

// void waiterServes(void Function() greeting) {
//   greeting();
// }

// void main() {
//   waiterServes(morningGreeting);
//   waiterServes(eveningGreeting);
// }

Function createGreeter(String name) {
  return () {
    print('Hello, $name!');
  };
}

void main() {
  Function greetJohn = createGreeter('John');
  Function greetSarah = createGreeter('Sarah');

  greetJohn();
  greetSarah();
}
