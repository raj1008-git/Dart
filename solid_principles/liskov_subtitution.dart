// abstract class Animal {
//   void makeSound();
// }

// class Lion extends Animal {
//   @override
//   void makeSound() {
//     print("Roar");
//   }
// }

// void makeAnimalSound(Animal animal) {
//   animal.makeSound();
// }

// void main() {
//   Animal animal = Lion();
//   makeAnimalSound(animal);

//   Lion lion = Lion();
//   makeAnimalSound(lion);
// }

class Animal {
  void run() {
    print("The Animal is running.");
  }
}

class Lion extends Animal {
  @override
  void run() {
    super.run();
    print('The lion is roaring while running. ');
  }
}

void main() {
  Animal animal = Lion();
  animal.run();
}
