/* 数据类型 */

/** Dart中支持下面数据类型
 * 常用数据类型：
 * Numbers（数值）：int double
 * Strings（字符串）：String
 * Booleans（布尔）：bool
 * List（数组）：数组是列表对象，所以大多数称它们为列表
 * Maps（字典）：Map是一个键值对相关的对象，键和值可以是任意类型的对象。
 * 
 */

/// 【1】字符串
demo_3_1() {
  //
  // 单引号
  var str1 = 'hello world 111';
  print(str1);
  // 双引号
  var str2 = "hello world 222";
  print(str2);
  // 三个单引号
  var str3 = '''hello world 333
  hello world 333
  ''';
  print(str3);
  // 三个双引号
  var str4 = """hello world 444
  hello world 444
  """;
  print(str4);

  // 2、字符串的拼接
  print("$str1 $str2");
  print(str1 + ' ' + str2);
}

// 【2】Numbers 类型
demo_3_2() {
  // int 必须是整型
  int a = 123;
  print(a);
  // double 既可以是整型也可以是浮点型
  double b = 1.234;
  b = 66;
  print(b);
  // 运算符
  var c = a + b;
  print(c);
}

// 【3】bool
demo_3_3() {
  bool flag = true;
  print(flag);
  // 条件
  var state = false;
  if (state) {
    print('true');
  } else {
    print('false');
  }

  if (flag == state) {
    print('equal');
  } else {
    print('unequal');
  }
}

// 【4】List
demo_3_4() {
  // 第一种定义方式
  var l1 = ['张总', 20, true];
  print(l1);
  print(l1.length);
  print(l1[0]);

  // 第二种定义方式
  var l2 = <String>['1', '2', '3', "hello"];
  print(l2);

  // 第三种定义方式
  var l3 = [];
  print(l3);
  print(l3.length);

  l3.add('1');
  l3.add("我问问");

  print(l3);
  print(l3.length);

  var l4 = ['张总', 20, true];
  l4.add("www");
  print(l4);

  // var list = new List();  // 废弃
  // 固定长度且固定类型的集合
  var list = List.filled(5, '2');
  list[1] = '5';
  print(list);

  // 可以直接修改长度
  var l5 = [1, 2, 3];
  print(l5.length);
  l5.length = 0;
  print(l5.length);
}

// 【5】Map 相当于js的对象
demo_3_5() {
  // 第一种定义
  var person = {"name": '张三', "age": 20, 'isMarry': false};
  print(person);
  print(person["name"]);
  // 第二种定义
  var p = new Map();
  p["name"] = "fuzongjian";
  p["language"] = ["11", '22', 33];
  print(p);
}

// 【6】类型判断 is 关键词判断
demo_3_6() {
  var p = new Map();
  print(p is Map);
  bool flag = true;
  print(flag is String);
}

main() {
  demo_3_6();
}
