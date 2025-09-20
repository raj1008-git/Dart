// Closure Functions //

// This is a Regular Function.
void sayHello() {
  print('Hello');
}

void executeFunction(void Function() function) {
  print('About to run a function..');
  function();
}

void main() {
  // Function assigned to a variable
  void Function() greetingFunction = sayHello;

  greetingFunction();
  executeFunction(greetingFunction);
}
