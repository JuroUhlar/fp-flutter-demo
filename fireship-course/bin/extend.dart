void main() {}

abstract class Dog {
  void walk() {
    print('Walking');
  }
}

class Pug extends Dog {
  final String breed = 'Pug';

  @override
  void walk() {
    super.walk();
    print("Tired now");
  }
}
