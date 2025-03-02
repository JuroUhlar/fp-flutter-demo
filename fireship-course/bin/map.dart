void main() {
  Map<String, dynamic> book = {
    'title': 'The Great Gatsby',
    'author': 'F. Scott Fitzgerald',
    'year': 1925,
  };

  book['revisions'] = 3;
  print(book);

  print(book['title']);
  print(book['author']);
  print(book['year']);

  print(book.keys);
  print(book.values.toList());
  print(book.entries);

  for (MapEntry entry in book.entries) {
    print('${entry.key}: ${entry.value}');
  }

  book.forEach((key, value) {
    print('$key: $value');
  });
}
