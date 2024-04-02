//Importing core libraries
import 'dart:math';

//Importing libraries from external packages
//import 'package:test/test.dart';

//Importing files
//import 'path/to/my_other_file.dart';

void main() {
  print('Hello, World!');
  print('hihihi');
  
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

  var result = fibonacci(20);

  //下面这句，where()是一个筛选的函数，里面name是遍历flyobj时的每一个元素，contains指name包含，forEach对每一个合格的元素遍历，这里用的时print打印语句。
  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  // This is a normal, one-line comment.

  /// This is a documentation comment, used to document libraries,
  /// classes, and their members. Tools like IDEs and dartdoc treat
  /// doc comments specially.

  /* Comments like these are also supported. */
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n + 2);
}

class Spacecraft {
  String name = 'test';
  DateTime? launchDate; //问号表示这个变量可以为空

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor(构造函数),用于初始化对象
  Spacecraft(this.name, this.launchDate) {
    // Initialization code
  }

  // Named constructor(命名构造函数)
  //这里面unlaunched是命名构造函数的名字，会调用Space构造函数，传入对应数据
  Spacecraft.unlaunched(String name) : this(name, null);
}
