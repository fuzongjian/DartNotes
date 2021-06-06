/**
 * Dart中抽象类：Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
 * 1、抽象类通过 abstract 关键字来定义
 * 2、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法。
 * 3、如果子类继承抽象类必须实现里面的抽象方法。
 * 4、如果把抽象类动作接口实现的话必须得实现抽象类里面定义的所有属性和方法。
 * 5、抽象类不能被实例化，只有继承它的子类可以
 * 
 * extends抽象类和implements的区别：
 * 1、如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话就用extentds继承抽象类
 * 2、如果只是把抽象类当做标准的话，就用implements实现抽象类
 */

/**
 *
 *  Dart中的多态
 * 允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
 * 子类的实例赋值给父类的引用。
 * 多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。
 *  
 * */

abstract class Animal {
  eat(); // 抽象方法
  printInfo() {
    print('我是抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }

  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠');
  }

  run() {
    print('小猫在跑');
  }
}

demo_11_1() {
  Dog dog = new Dog();
  dog.eat();
  dog.run();
  dog.printInfo();

  Cat cat = new Cat();
  cat.eat();
  cat.run();
  cat.printInfo();

  // Animal animal = new Animal();  // 抽闲类不能被实例化
  // 允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
  Animal animal = new Dog();
  animal.eat();
}

/**
 * 和Java一样，dart也有接口，但是和Java还是有区别的。
 * 首先，dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口被实现。
 * 同样适用implements关键字进行实现。
 * 但是dart的接口有点儿奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法全部需要复写一遍。
 * 而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果实现像Java接口那样的方式，一般会使用抽象类。建议使用抽象类定义接口。
 */
abstract class Db {
  late String uri; // 数据库的连接地址
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  late String uri;
  Mysql(this.uri);

  @override
  add(String data) {
    print('这是Mysql的add方法' + data);
  }

  @override
  delete() {}

  @override
  save() {}
}

demo_11_2() {
  Mysql mysql = new Mysql('xxxx');
  mysql.add('== Hello world~');
}

main() {
  // demo_11_1();
  demo_11_2();
}
