/* 函数：函数的定义、可选参数、默认参数、命名参数、匿名函数 */
demo_7_1() {
  print('hello world ~ 123');

  // 实参
  print(printInfo('张三', 15));

  print('=== 可选参数 ===');
  printUserInfo('hello', 25);

  print('=== 默认参数 + 可选参数 ===');
  printNewInfo('张三', 'female');
  printNewInfo('李四', 'female', 15);
}

// 形参
String printInfo(String name, int age) {
  return '姓名：$name,年龄：$age';
}

// 可选参数
void printUserInfo(String name, [int? age]) {
  if (age != null) {
    print('姓名：$name --- 年龄：$age');
  } else {
    print('姓名：$name');
  }
}

// 默认参数
void printNewInfo(String name, [String sex = 'male', int? age]) {
  if (age != null) {
    print('姓名：$name --- 年龄：$age --- 性别：$sex');
  } else {
    print('姓名：$name --- 性别：$sex');
  }
}

// 命名参数  这个方法比较实用
demo_7_2() {
  print('命名参数');
  void test(String name, {int? age, String sex = 'male'}) {
    if (age != null) {
      print('姓名：$name --- 年龄：$age --- 性别：$sex');
    } else {
      print('姓名：$name --- 性别：$sex');
    }
  }

  test('John', age: 15);
  test('Marry', age: 16, sex: 'female');
}

// 实现一个 方法当做参数的方法
demo_7_3() {
  fn1() {
    print('fn1');
  }

  fn2(fname) {
    fname();
  }

  fn2(fn1);

  var fn = () {
    print('匿名方法');
  };
  fn();

  (() {
    print('自执行方法');
  })();
  ((name) {
    print('my name is $name');
  })('John');
}

main() {
  print('函数：函数的定义、可选参数、默认参数、命名参数、箭头函数、匿名函数、闭包');
  // demo_7_1();
  // demo_7_2();
  demo_7_3();
}
