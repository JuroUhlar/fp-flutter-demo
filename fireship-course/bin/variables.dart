void main() {
  int num1 = 10;
  double num2 = 10.5;

  print((num1 + num2) is int); // false
  // You can use runtimeType to get the type of the variable
  print((num1 + num2).runtimeType); // double

  String str = 'Hello';

  // String interpolation
  print('The type of $str is ${str.runtimeType}');

  // `var` to automatically infer the type
  var num3 = 10;
  // if you don't assign a value to a variable, type will be dynamic
  var dontKnow;
  print('The type of $dontKnow is ${dontKnow.runtimeType}');
  dontKnow = 'some text';
  print('The type of $dontKnow is ${dontKnow.runtimeType} now');

  // Use final to make constants
  final String myConst = "cannot change this";
  // Cannot do this;
  // myConst = "something else";
  // Final variables can be assigned a value at runtime
  final int myFinalNum = 10 * num1;
  print(myFinalNum);

  // Use const to make compile-time constants
  const int myConstInt = 10;
  // Cannot do this;
  // const int myConstInt2 = 10 * num1;
  print(myConstInt);

  bool isTrue = true;
}
