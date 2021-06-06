/* 循环语句 for while do...while break  continue */

/// 【1】for while
demo_5_1() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  for (var i = 1; i <= 10; i++) {
    print(i);
  }
  var sum = 1;
  for (var i = 1; i <= 5; i++) {
    sum *= i;
  }
  print(sum);
}

/// 【1】while do...while
dmeo_5_2() {
  int i = 0;
  // 先判断
  while (i <= 10) {
    print(i);
    i++;
  }
  var j = 0;
  // 先执行
  do {
    print(j);
    j++;
  } while (j <= 10);
}

/// 【3】break
/** 
 * break：
 * 如果在循环语句中已经执行了break语句，就不会执行循环体中位于break后的语句；
 * 在多层循环中，一个break语句只能向外跳出一层。
 * continu：
 * 只能在循环语句中使用，是本次循环结束，即跳过循环体下面尚未执行的语句，继续执行下面的语句。
 */
demo_5_3() {
  for (var i = 0; i < 10; i++) {
    if (i == 4) continue; // 只是终止本次循环，但不影响下一次循环
    print('i === $i');
  }

  for (var j = 0; j < 10; j++) {
    if (j == 4) {
      break; // 直接跳出循环体
    }
    print('j === $j');
  }

  for (var i = 0; i < 2; i++) {
    print('外层---$i');
    for (var j = 0; j < 3; j++) {
      if (j == 1) break; // 只能向外跳出一层循环
      print('里层$j');
    }
  }
}

/// 【3】break 运用在while循环中 switch...case中
demo_5_4() {
  var b = 0;
  while (b <= 10) {
    if (b == 4) break; // 跳出循环，结束打印
    print('b === $b');
    b++;
  }

  // continue 没法应用
  // var a = 0;
  // while (a <= 10) {
  //   if (a == 4) continue;
  //   print('a === $a');
  //   a++;
  // }
  var age = 10;
  switch (age) {
    case 10:
      print('age === $age');
      break;
    default:
  }
}

main() {
  // demo_5_1();
  // dmeo_5_2();
  // demo_5_3();
  demo_5_4();
}
