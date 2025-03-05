// import 'classes.dart';
// To avoid collisions, you can use the `as` keyword
import 'classes.dart' as classes;
// Or not import the colliding class
import 'classes.dart' hide Point;
// Or import just the one you want
import 'classes.dart' show Book;

// Name collisions can happen when importing packages
class Point {}

void main() {
  var point = classes.Point.fromList([10, 20]);
  print(point.x);
  print(point.y);
}
