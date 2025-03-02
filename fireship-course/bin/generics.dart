class Box<T> {
  T value;

  Box(this.value);

  T openBox() {
    return value;
  }
}

void main() {
  var box = Box<String>('Hello');
  print(box.openBox());

  var box2 = Box<int>(123);
  print(box2.openBox());
}
