/**
 * Dart中一个类实现多个接口
 */
abstract class A {
  late String name;
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  @override
  late String name;

  @override
  printA() {
    print('printA');
  }

  @override
  printB() {}
}

demo_12_1() {
  C c = new C();
  c.printA();
}

/**
 * mixins的中文意思是混入，就是在类中混入其他功能。
 * 在Dart中可以使用mixins实现类似多继承的功能
 * 
 * 因为mixins使用的条件，随着Dart版本一直在变，这里主要是Dart2.x版本中使用的条件
 * 1、作为mixins的类只能继承自Object，不能继承其他类。
 * 2、作为mixins的类不能有构造函数
 * 3、一个类可以mixins多个mixins类
 * 4、mixins绝不是继承，也不是接口，而是一种全新的特性。
 *
 */
class Person {
  String name;
  num age;
  Person(this.name, this.age);
  printInfo() {
    print('这是一个Person类 === ${this.name} --- ${this.age}');
  }
}

class D {
  String info = 'this is D';
  void printD() {
    print('D');
  }

  void run() {
    print('D run');
  }
}

class E {
  void printE() {
    print('E');
  }

  void run() {
    print('E run');
  }
}

// 作为mixins的类只能继承自Object，不能继承其他类。 即D、E不能继承其他类
// 但F可以继承其他类，并且其他类可以有构造函数
class F extends Person with D, E {
  F(String name, num age) : super(name, age);
}

demo_12_2() {
  var f = new F('John', 15);
  f.printD();
  f.printE();

  print(f.info);

  f.printInfo();
  // E的run方法会覆盖D的run方法
  f.run();

  // 类型
  print(f is D);
  print(f is E);
}

main() {
  // demo_12_1();
  demo_12_2();
}
