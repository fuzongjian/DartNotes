///  【1】主函数的两种书写方式
/// 第一种
// main() {
//   print('hello world ~');
// }
/// 第二种
// void main() {
//   print('hello dart ~');
// }

/// 【2】变量命名
/*
  Dart的命名规则
  1、变量名称必须有数字、字母、下划线及美元符号（$）组成。
  2、注意：变量名称开头不能是数字。
  3、变量名称不能是保留字和关键字。
  4、变量的名字区分大小写，如：age和Age是不同的变量，在实际开发中，建议只用一个
  5、标识符（变量名称）一定是见名思意
 */
demo_2_2() {
  // var 定义之后，系统自动推断类型
  var string = 'hello world ~';
  print(string);
  var num = 123;
  print(num);

  // 通过类型变量申明（系统自动进行类型校验）
  String str = 'hello world ~';
  print(str);
  int number = 1234;
  print(number);
}

/// 【3】常量  final 和 const 修饰符
/*
 * const值不变，一开始就需要赋值
 * final可以一开始不赋值，只能赋值一次；而final不仅有const的编译时常量的特性，最重要的是他是运行时常量，并且final是惰性初始化，即在运行时第一次使用前初始化。
 */
demo_2_3() {
  // var定义之后，可以修改
  var str = 'yoyo string';
  print(str);
  str = 'change string';
  print(str);

  // 常量不可以修改
  const PI = 5201314;
  print(PI);

  final time = new DateTime.now();
  print(time);
  // 当 const 不行，下面代码直接报错
  // const new_time = new DateTime.now();
  // print(new_time);
}

main() {
  demo_2_2();
  demo_2_3();
}
