void main() {
  var conditionOne = true;
  var conditionTwo = false;
  var conditionThree = true;

  // AND operator
  if (conditionOne && conditionThree) {
    print('Both conditions are true');
  }

  // OR operator
  if (conditionTwo || conditionOne) {
    print('At least one condition is true');
  }

  // NOT operator
  if (!conditionTwo) {
    print('Condition one is false');
  }

  // Assignment operator
  // ??= assign value if null, otherwise keep current value
  var name = 'John';
  var secondName = null;
  name ??= 'Jane';
  secondName ??= 'Doe';
  print(name);
  print(secondName);

  // Null-coalescing operator
  var z = secondName ?? 'alternative';
  print(z);

  // Ternary operator
  String color = 'blue';
  var isBlue = color == 'blue' ? "it is blue" : "it is not blue";
  print(isBlue);

  // Cascade notation
  var person = Person();
  person.name = 'John';
  person.age = 20;
  print(person.name);
  print(person.age);

  // Instead of the above, we can do this:
  // Returns the original object we started with
  var person2 =
      Person()
        ..name = 'Jim'
        ..age = 34;
  print(person2.name);
  print(person2.age);

  // Typecast
  var x = 10 as String;
  // print(x is String); // Will error in runtime though
}

class Person {
  String name = '';
  int age = 0;

  void greet() {
    print('Hello, my name is $name and I am $age years old');
  }
}
