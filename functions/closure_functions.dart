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

// Function createGreeter(String name) {
//   return () {
//     print('Hello, $name!');
//   };
// }

// void main() {
//   Function greetJohn = createGreeter('John');
//   Function greetSarah = createGreeter('Sarah');

//   greetJohn();
//   greetSarah();
// }

// Event Handelling with Memory
// Function createCounter() {
//   int count = 0;
//   return () {
//     count++;
//     print('Count is now: $count');
//   };
// }

// void main() {
//   Function counter1 = createCounter();
//   Function counter2 = createCounter();

//   counter1();
//   counter2();

//   counter1();
//   counter2();
// }

// void main() {
//   List<String> users = ['Alice', 'Bob', 'Charlie'];

//   users.forEach((user) => print('Processing $user'));

//   // Specify the type: a function that takes a String and returns void
//   void Function(String) createUserProcessor(String action) {
//     return (String user) => print('$action for user : $user');
//   }

//   // emailSender is now the correct type
//   void Function(String) emailSender = createUserProcessor('sending email');
//   users.forEach(emailSender);
// }

String processData(String data) {
  return data.toUpperCase();
}

String Function(String) processor = (String data) {
  return data.toUpperCase();
};

String Function(String) shortProcessor = (String data) => data.toLowerCase();

List<String> names = ['john', 'Jane'];
List<String> upperNames = names.map((name) => name.toUpperCase()).toList();
