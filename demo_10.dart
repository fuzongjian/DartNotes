/**
 * Dart中的静态成员
 * 1、使用static关键字来实现类级别的变量和函数
 * 2、静态方法不能访问非静态成员，非静态方法可以访问静态成员
 */
class Person {
  String name = '张三';
  void show() {
    print(name);
  }
}

class PersonTwo {
  static String name = '张三';
  static void show() {
    print(name);
  }
}

demo_10_1() {
  var p = new Person();
  p.show();

  print(PersonTwo.name);
  PersonTwo.show();
}

class PersonThree {
  static String name = '张三';
  int age = 10;
  static void show() {
    print(name);
  }

  // 非静态方法可以访问静态成员及非静态成员变量
  void printInfo() {
    // 访问静态属性
    print(name);
    // 访问非静态属性
    print(this.age);
    // 调用静态方法
    show();
  }

  static void printUserInfo() {
    print(name); // 静态属性
    show(); // 静态方法

    // print(age);  // 静态方法不能访问非静态的属性
    // printInfo(); // 静态方法没法访问非静态的方法
  }
}

demo_10_2() {
  var p = new PersonThree();
  p.printInfo();

  PersonThree.printUserInfo();
}

/**
 * Dart中的对象操作符
 * ？  条件运算符
 * as 类型转换
 * is 类型判断
 * .. 级联操作（连缀）
 */
class PersonFour {
  String name;
  num age;
  PersonFour(this.name, this.age);
  void printInfo() {
    print('${this.name} --- ${this.age}');
  }
}

demo_10_3() {
  // 在不确定对象是否被实例化之前使用 ?. 避免空指针错误的发生
  // PersonFour p1;
  // p1?.printInfo();
  // PersonFour p2 = PersonFour('John', 18);
  // p2?.printInfo();

  PersonFour p3 = PersonFour('John', 18);
  if (p3 is PersonFour) {
    p3.name = 'six';
  }
  p3.printInfo();
  print(p3 is Object);

  var p4;
  p4 = '';
  p4 = PersonFour('John', 19);
  (p4 as PersonFour).printInfo();

  PersonFour p5 = PersonFour('John', 18);
  p5.printInfo();
  p5.name = 'Hello';
  p5.age = 40;
  p5.printInfo();

  p5
    ..name = 'world'
    ..age = 20
    ..printInfo();
}

/**
 * Dart中类的继承
 * 1、子类使用extends关键词来继承父类
 * 2、子类会继承父类里面可见的属性和方法，但是不会继承构造函数
 * 3、子类能复写父类的方法 getter和setter
 */
class PersonFive {
  String name;
  num age;
  PersonFive(this.name, this.age);
  PersonFive.unknow(this.name, this.age); // 匿名构造函数
  void printInfo() {
    print('${this.name} --- ${this.age}');
  }
}

class Son extends PersonFive {
  // 添加自己的属性
  String sex;
  // 构造函数传参
  // Son(String name, num age, this.sex) : super(name, age);
  // 非构造函数传参
  Son(String name, num age, this.sex) : super.unknow(name, age);
  // 添加自己的方法
  void run() {
    print('${this.name} === ${this.age} === ${this.sex}');
  }

  // 重写父类的方法
  @override // 该关键字表示重写该方法  可写可不写
  void printInfo() {
    print('${this.name} === ${this.age} === ${this.sex}');
  }
}

demo_10_4() {
  Son son = new Son('John', 12, 'male');
  print(son.name);
  son.printInfo();
}

main() {
  // demo_10_1();
  // demo_10_2();
  // demo_10_3();
  demo_10_4();
}
