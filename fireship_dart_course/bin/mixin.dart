mixin Strong {
  bool doesLift = true;

  void benchPress() {
    print('Doing bench press');
  }
}

mixin Fast {
  bool doesRun = true;

  void sprint() {
    print('Running fast');
  }
}

abstract class Human {}

class SuperHuman extends Human with Strong, Fast {}

void main() {
  var superHuman = SuperHuman();
  superHuman.benchPress();
  superHuman.sprint();
}
