var record = ('first', a: 2, b: true, 'last');

(int, String) ageName = (24, "Hoang");

void main() {
  print(record.$1);
  print(record.a);
  print(record.$2);

  print(ageName.$1);
  int c = sum(a: 10, b: 20);
  print(c);
  info(name: "Hoang Vu Van");

  final List<int> arrNumber = [10, 11, 9, 7, 4, 222, 33, 66, 5];
  final List<int> arr2 = [];

  arrNumber.forEach((element) {
    if (element % 2 == 0) {
      arr2.add(element);
    }
  });

  print(arr2);

  print(">>>>>>>>>>>>>...");

  final b = arrNumber.any(
    (element) => element % 2 == 0,
  );
  print(b);

  final color = Color.values;

  final a = Color.red.name;
  print(a); // red
  print(color); // [Color.red,Color.green,Color.black]
}

int sum({required int a, required int b}) {
  return a + b;
}

void info({required String name, int age = 12}) {
  print(name);
  print(age);
}

class Point {
  final double x;
  final double y;

  Point({required this.x, required this.y});
}

class Vector extends Point {
  final double z;

  Vector({required super.x, required super.y, required this.z});
}

abstract class Vehicle {
  void helloWorld(String name) {}
}

class Car extends Vehicle {
  void helloWorld(String name) {}
}

class MocVehicle implements Vehicle {
  @override
  void helloWorld(String name) {
    // TODO: implement helloWorld
  }
}

// interface
interface class Student {
  void info({required String name}) {}
}

class Student1 implements Student {
  @override
  void info({required String name}) {
    // TODO: implement info
  }
}

enum Color { red, green, black };
