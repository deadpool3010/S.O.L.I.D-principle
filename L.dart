/*

l: likov substitution principle

*/

// abstract class Animal {
//   void makesound();
// }

// class Lion extends Animal {
//   void makesound() {
//     print('roar');
//   }
// }

// void makeanimalsound(Animal animal) {
//   animal.makesound();
// }

// void main() {
//   Animal l = Lion();
//   l.makesound();
// }

class Animal {
  void run() {
    print('Animal is running');
  }
}

class Lion extends Animal {
  void run() {
    super.run();
    print('lion');
  }
}

void main() {
  Animal l = new Lion();
  l.run();
}
