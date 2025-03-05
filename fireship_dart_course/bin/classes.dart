void main() {
  var book = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);
  print(book.title);
  print(book.author);
  print(book.year);

  book.printBook();

  Book.printBookStatic(book);

  var rect = Rectangle(10, 20);
  print(rect.area);

  var point = Point.fromList([10, 20]);
  print(point.x);
  print(point.y);

  var point2 = Point.fromMap({'x': 12, 'y': 24});
  print(point2.x);
  print(point2.y);
}

class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  printBook() {
    print('$title by $author ($year)');
  }

  static printBookStatic(Book book) {
    print('${book.title} by ${book.author} (${book.year})');
  }
}

class Rectangle {
  final int width;
  final int height;
  // must use `late` keyword to declare a property that will be initialized later
  late final int area;
  String? name;

  // Can initialize nullable properties in the constructor using []
  Rectangle(this.width, this.height, [this.name]) {
    // Can calculate and assign properties in the constructor
    area = width * this.height;
  }
}

// Using names constructor parameters
class Circle {
  // You don't need to repeat the properties here

  // Using `const` allows you to instantiate objects with the const keyword
  const Circle({required int radius, String? name});
}

// Named constructors
class Point {
  int x = 0;
  int y = 0;

  // Named constructor
  Point.fromList(List<int> data) {
    x = data[0];
    y = data[1];
  }

  Point.fromMap(Map data) {
    x = data['x'];
    y = data['y'];
  }
}
