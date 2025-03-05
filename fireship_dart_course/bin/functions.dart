void main() {
  // Function are objects

  // Basic function
  String takeFive() {
    return 'Take five';
  }

  // Return types are inferred
  takeSix() {
    return 'Take six';
  }

  // Positional parameters
  void greet(String name, String lastName) {
    print('Hello, $name $lastName');
  }

  // Named parameters
  void greet2({required String name, String lastName = 'Doe', String? age}) {
    print('Hello, $name $lastName');
  }

  takeFive();
  takeSix();
  greet('John', 'Doe');
  greet2(name: 'Jane', lastName: 'Smith');
  greet2(name: 'John', lastName: 'Doe', age: '20');
  greet2(age: '25', name: 'Jane');

  // Arrow function
  String takeSeven() => 'Take seven';
  print(takeSeven());

  // Can pass functions as parameters
  void doSomething(Function myFunction) {
    myFunction();
  }

  doSomething(() => print(takeSeven()));
}
