/* 运算符、条件判断、类型转换 */

/// 【1】运算符
demo_4_1() {
  // 1. 算数运算符
  int a = 13;
  int b = 14;
  // 加
  print(a + b);
  // 减
  print(a - b);
  // 乘
  print(a * b);
  // 除
  print(a / b);
  // 取余
  print(a % b);
  // 取整
  print(a ~/ b);

  // 2、关系运算符，主要运用于条件判断中
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
}

/// 【2】逻辑运算符 与或非
demo_4_2() {
  // 1、非 ！
  bool flag = false;
  print(!flag);
  // 2、或 ||
  bool state = true;
  print(flag || state);
  // 3、与 &
  print(flag & state);
}

/// 【3】赋值运算符
demo_4_3() {
  int a = 3;
  int b = 4;
  int c = a + b;
  print(c);

  int d = 2021;
  // 如果d为空，则把2020赋值给d
  d ??= 2020;
  print(d);
}

/// 【4】复合运算符 += -= *= /= %= ~/=
demo_4_4() {
  int a = 10;
  a += 13;
  print(a);

  // 注意 赋值运算
  var c = 10;
  var d = c++; // 先赋值后运算
  var e = ++c; // 先运算后赋值
  // d = 10; c = 12, e = 12
  print(d);
  print(c);
  print(e);
}

/// 【5】条件运算符  if else switch case
demo_4_5() {
  bool flag = true;
  print(flag);

  var sex = "male";
  switch (sex) {
    case "female":
      print("女");
      break;
    case "male":
      print('男');
      break;
    default:
      print('不知性别');
      break;
  }
}

/// 【6】三目运算符
demo_4_6() {
  var flag = true;
  var c;
  if (flag) {
    c = "true";
  } else {
    c = "false";
  }
  print(c);

  var d = flag == true ? 'true' : 'false';
  print(d);
}

/// 【7】??运算符
demo_4_7() {
  var a;
  var b = a ?? 10;
  print(b);

  var c = 10;
  var d = c ?? 11;
  print(d);
}

/// 【8】类型转换
demo_4_8() {
  // 1、 Number与String类型之间的转换
  String str = '123';
  // 建议用double进行转换
  var num = int.parse(str);
  print(num is int);

  String str1 = '123.13';
  var num1 = double.parse(str1);
  print(num1 is double);

  // 转换不成功时 异常捕获
  String price = '';
  try {
    var myNum = double.parse(price);
    print(myNum);
  } catch (err) {
    print(0);
    print(err);
  }

  // Number 与  String
  var number = 123;
  var string = number.toString();
  print(string is String);

  // 其他类型转换为Booleans类型
  var string1 = '1234';
  if (string1.isEmpty) {
    print("string为空");
  } else {
    print("string为非空");
  }

  var number1;
  if (number1 == null) {
    print('null');
  } else {
    print('not null');
  }

  final myN = 0 / 0;
  print(myN);
  print(myN.isNaN);
}

main() {
  // demo_4_3();
  demo_4_4();
  // demo_4_5();
  // demo_4_6();
  // demo_4_7();
  // demo_4_8();
}
