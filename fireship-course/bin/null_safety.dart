void main() {
  // By default, variables are non-nullable
  // int age = null; // Error

  // Use ? to make a variable nullable
  int? age = null;
  int? height;
  print(age);
  print(height);

  // Assertion operator ! make the compiler assume that the variable is not null
  // Dangerous if you fuck up
  // int age2 = age!; // Error without !
  if (age != null) {
    int age2 = age;
    print(age2);
  }
}

// Can use `late` to say it will be initialized later
// Dangerous if you fuck up, avoid if possible
class Animal {
  // final _size = 'big'; // Error
  late final String _size;

  void goBig() {
    _size = 'big';
    print('I am $_size');
  }
}
