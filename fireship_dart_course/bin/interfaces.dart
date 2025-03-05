// Every class is also an interface (what other dev sees in Intellisense when working with the class)

// Can make class abstract if you only care about the interface
// Abstract classes cannot be instantiated
abstract class Elephant {
  // Public interface
  final String name;

  // Private interface
  final int _id = 23;

  // Constructor is NOT in the interface
  Elephant(this.name);

  // Public method
  void printName() {
    print(name);
  }

  // Private method
  void _printSecret() {
    print(_id);
  }
}
