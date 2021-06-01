/* 函数：箭头函数、函数之间的相互调用、闭包 */
demo_8_1() {
  var list = [1, 2, 3, 4, 5];
  list.forEach((element) {
    print(element);
  });
  // 箭头后面只能跟一句
  list.forEach((element) => print(element));
  list.forEach((element) => {print(element)});
}

demo_8_2() {
  // 修改list里面的数据，让数组中大于2的值乘以2
  var list = [1, 2, 3, 4, 5];
  var new_list = list.map((e) {
    return e > 2 ? e * 2 : e;
  });
  print(new_list.toList());
  // 箭头函数
  var newList = list.map((e) => e > 2 ? e * 2 : e).toList();
  print('list === $list newList === $newList');
}

// 函数之间的相互调用
demo_8_3() {
  bool isEvenNumber(int n) {
    return n % 2 == 0 ? true : false;
  }

  printNumber(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNumber(8);
}

// 方法的递归
demo_8_4() {
  // 通过方法递归，求1-100的和
  var sum = 0;
  test(int n) {
    sum += n;
    if (n == 0) {
      print('sum === $sum');
      return;
    }
    ;
    test(n - 1);
  }

  test(100);
}

/** 闭包
 * 1、全局变量的特点：全局变量常住内存、全局变量会污染全局
 * 2、局部变量的特点：不常住内存，会被垃圾回收机制回收，不会污染全局
 * 想实现的功能
 * 1、常驻内存
 * 2、不污染全局
 * 闭包：函数嵌套函数，内部函数会调用外部函数的变量或参数， 变量或参数不会被系统回收
 * 闭包的写法：函数嵌套函数，并return里面的函数，这样就形成了闭包。
 *  */
demo_8_5() {
  test() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }

  var fn = test();
  fn(); // 124
  fn(); // 125
  fn(); // 126
}

main() {
  // demo_8_1();
  // demo_8_2();
  // demo_8_3();
  // demo_8_4();
  demo_8_5();
}
