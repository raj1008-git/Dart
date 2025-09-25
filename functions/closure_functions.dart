void greetUser(String Function(String) greetingMaker, String name) {
  String greeting = greetingMaker(name);
  print(greeting);
}

String formalGreeting(String name) {
  return "Good day, Mr./Mrs $name";
}

String casualGreeting(String name) {
  return "Hey $name!";
}

void main() {
  greetUser(formalGreeting, "Raj Singh");
  greetUser(casualGreeting, "Smith");
}
