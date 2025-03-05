void main() {
  String color = 'blue';

  if (color == 'blue') {
    print('The color is blue');
  } else if (color == 'green') {
    print('The color is green');
  } else {
    print('The color is not blue or green');
  }

  // Short-hand if statement
  if (color == 'red') print('The color is red');

  // Checking if string is empty
  if (color.isEmpty) print('The color is empty');

  // Checking if variable is null
  String? name;
  if (color == 'red') {
    name = 'John';
  }
  // Must write it out explicitly
  if (name == null) print('The name is null');

  // For loops
  for (int i = 0; i < 5; i++) {
    print(i);
    // break;
    // continue;
  }

  // While loops
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  // Do-while loops
  int j = 0;
  do {
    print(j);
    j++;
  } while (j < 5);

  // Assert statement
  var txt = 'good';
  // Assert statement will throw an error in debug mode if the condition is false
  // But ignore it in release mode
  assert(txt != 'bad');
}
