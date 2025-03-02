void main() {
  // List inherits from Iterable (same as Map, Set)
  // Literal syntax
  List<int> list = [1, 2, 3, 4, 5];
  print(list);

  // List methods
  print(list.runtimeType);
  print(list[0]);
  print(list.length);
  print(list.first);
  print(list.last);
  print(list.isNotEmpty);
  print(list.reversed);
  print(list.sublist(1, 3));

  // Filled
  var list2 = List.filled(10, 0);
  print(list2);

  // Generate
  var list3 = List.generate(10, (index) => index * 2);
  print(list3);

  list.add(6); // push
  print(list);

  list.removeLast(); // pop
  print(list);

  list.insert(2, 10); // insert
  print(list);

  // Iterating over a list using for loop
  for (int num in list) {
    print(num);
  }

  // forEach
  list.forEach((element) => print(element));

  // map
  var doubled = list.map((n) => n * 2);
  print(doubled);

  // where
  var evens = list.where((n) => n % 2 == 0);
  print(evens);

  // any
  print(list.any((n) => n == 3));

  // Combining lists together
  var list4 = [1, 2, 3];
  var list5 = [4, 5, 6];
  var combined = [...list4, ...list5];
  print(combined);

  // Can use logic operators in lists
  bool depressed = true;
  var cart = ['milk', 'eggs', if (depressed) 'beer'];
  print(cart);
}
