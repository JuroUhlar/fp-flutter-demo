import 'dart:async';

// Future - single async event
// Stream - multiple async events

void main() {
  var stream = Stream.fromIterable([1, 2, 3]).asBroadcastStream();

  stream.listen((data) => print(data));

  stream.map((data) => data * 2).listen((data) => print(data));
}

streamFun() async {
  var stream = Stream.fromIterable([4, 5, 6]);

  // can basically create an async for loop
  await for (int value in stream) {
    print(value);
  }
}
