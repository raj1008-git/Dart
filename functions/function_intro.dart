// Fiunctions
// optionalReturnType funstionName(optionalType parameter1, optionalType parameter 2){}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 0) {
    return 1;
  }
  return number * factorial(number - 1);
}

void classicalFunctions() {
  printMyName('Anna');
  print('Raj');
  final sum = add(5, 3);
  print(sum);
  print('10 Factorial is ${factorial(10)}');
}

// Optional Signal.
// When you wrap parameters in square brackets,
// you are telling dart: These parameters are
// nice to have but not essential.
// Without optional parameters,(rigid)
/*
void greetPerson(String name, String greeting, String punctuation)
{
print ('$greeting $name $punctuation);
}

// You must provide all three parameters.
greetPerson('Alice', 'Hello', '!');
*/
/*
void greetPersonFLexible(String name, [String greeting='Hello', String punctuation='!']){
print($greeting $name $punctuation);
}

greetingPersonFlexible('Alice');
greetingPersonFlexible('Alice','Hi');
greetingPersonFlexible('Alice','Hi', '?');
*/

/*
void makeTea(String teaType, [int sugars=1, bool milk =true, bool biscuit=false]){
print('Making $teaType tea with $sugars sugar(s)');
if(milk) print('Adding Milk');
if (biscuit) print('Serving with a biscuit');
}

makeTea('Earl gray');
makeTea('English Breakfast', 2);
makeTea('Green', 0, false);
makeTea('Chai', 3, true,true); 
*/

void unnamed([String? name, int? age]) {
  final actualName = name ?? 'Unknown';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName = name ?? 'Mystery Function';
  print('$actualGreeting, $actualName');
}

String duplicate(String name, {int times = 1}) {
  final merged = StringBuffer(name);
  for (var i = 1; i < times; i++) {
    merged.write('$name');
  }

  return merged.toString();
}

void optionalParameters() {
  unnamed('Huxley', 3);
  unnamed();

  named(greeting: 'greetions and salutation');
  named(name: 'Raj');
  named(name: 'Alex', greeting: 'Bonjour');

  final multiply = duplicate(times: 3, 'Raj');
  print(multiply);
}

void functionPlayground() {
  // classicalFunctions();
  optionalParameters();
}

void main() {
  functionPlayground();
}
