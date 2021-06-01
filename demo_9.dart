/**
 * OOP面向对象编程的三个基本特征：封装、继承、多态
 * 封装：封装是对象和类概念的主要特征，封装，把客观事务封装成抽象的类，并且把自己的部分属性和方法提供给对象调用。
 * 继承：
 * 多态：允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果。+
 * 
 * 
 * Dart所有的东西都是对象，所有的对象都继承自Object类。
 * Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类。
 * 一个类通常有属性和方法组成。
 */
// 类单独凑成一个文件
import 'lib/Animal.dart';

class Person {
  String name = '张三'; // 属性
  int age = 15; // 属性
  // 1、默认的构造函数
  // Person() {
  //   print('这是构造函数里面的内容，这个方法在实例化的时候触发');
  // }

  // 2、自定义构造函数
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 3、自定义构造函数简写
  Person(this.name, this.age);

  // 命名构造函数可以有多个
  Person.now() {
    print('我是命名构造函数  now()');
  }
  Person.setInfo(String name, int age) {
    print('我是命名构造函数  setInfo()');
    this.name = name;
    this.age = age;
  }

  getInfo() {
    print('$name === $age');
    print('${this.name} === ${this.age}');
  }

  setInfo(int age) {
    this.age = age;
  }
}

demo_9_1() {
  // var person = new Person();
  // print(person.name);
  // person.getInfo();
  // person.setInfo(10);
  // person.getInfo();

  // Person p = new Person();
  // print(p);

  var p1 = new Person('张三', 12);
  // p1.name = '12';
  p1.getInfo();

  var p2 = new Person.now();
  var p3 = new Person.setInfo('marry', 10);
  p3.getInfo();
}

// 类单独凑成一个文件
demo_9_2() {
  print('类单独凑成一个文件');
  var animal = new Animal('dog', 1);
  animal.printInfo();

  // 简介调用私有属性
  animal.setSex('female');
  // 间接调用私有方法
  animal.execEat();
}

// setter getter
class Rect {
  num height;
  num width;
  Rect(this.height, this.width);
  num area() {
    return this.height * this.width;
  }

  // 计算属性
  get areas {
    return this.height * this.width;
  }

  // setter 方法
  set areaHeight(value) {
    this.height = value;
  }
}

demo_9_3() {
  var rect = Rect(10, 6);
  print(rect.area());
  print(rect.areas);

  rect.areaHeight = 10;
}

class NewRect {
  num height;
  num width;
  NewRect()
      : height = 6,
        width = 6 {
    // 先赋值 后执行下面语句
    print('${this.height} === ${this.width}');
  }
  getArea() {
    return this.height * this.width;
  }
}

// 在构造函数之前体运行之前初始化实例变量
demo_9_4() {
  NewRect r = new NewRect();
  print(r.getArea());
}

main() {
  // demo_9_2();
  // demo_9_3();
  demo_9_4();
}
