// Future are like promises in JavaScript

var delay = Future.delayed(Duration(seconds: 5));

void main() async {
  print('Waiting for 5 seconds');
  delay
      .then((value) => print('Done'))
      .catchError((error) => print('Error: $error'));

  var data = await fetchData();
  print(data);
}

// Use `async` and `await` to work with futures
Future<String> fetchData() async {
  var data = await Future.value('World');
  return 'Hello $data';
}
