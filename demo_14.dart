import 'lib/Animal.dart'; // 引入自己封装的库
import 'dart:math'; // 系统内置库
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'lib/Person1.dart';
import 'lib/Person2.dart' as lib;

// import 'lib/Method.dart' show getName;
import 'lib/Method.dart' hide getName;
/**
 * Dart中的库分为三种：
 * 1、自定义的库（就是自己封装的一些方法）
 *    import 'lib/xxx.dart';
 * 2、系统内置的库
 *    import 'dart:math';
 *    import 'dart:io';
 *    import 'dart:covert';
 * 3、Pub包管理系统中的库
 *  https://pub.dev/packages
 *  https://pub.flutter-io.cn/packages
 *  https://pub.dartlang.org/flutter
 *    ① 需要在自己项目根目录新建一个pubspec.yaml
 *    ② 在pubspec.yaml文件配置名称、描述、依赖等信息
 *    ③ 然后运行pub get获取包下载到本地
 *    ④ 项目中引入库 import 'package:http/http.dart' as http; 可参照文档来写即可
 *    
 *    name: xxx
 *    decription: A new flutter module project.
 *    dependencies:
 *      http: ^0.13.3
 */

demo_14_1() {
  Animal animal = Animal('dog', 1);
  animal.printInfo();
}

demo_14_2() {
  print(min(12, 13));
  print(max(23, 14));
}

demo_14_3() async {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
// https://api.win-norm.com/api/dynamic/web/index
  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

/**
 * Dart库的重命名及冲突解决
 * 当引入两个库中有相同名称标识符的时候，
 * import 'package:lib1/lib1.dart';
 * import 'package:lib2/lib2.dart' as lib2;
 * Element element1 = new Element();
 * lib2.Element element2 = new lib2.Element();
 */

demo_14_4() {
  Person p1 = new Person('john', 15);
  p1.printInfo();

  lib.Person p2 = new lib.Person('safira', 18);
  p2.printInfo();
}

/**
 * 如果只需要引入库的一部分，有两种模式：
 * ① 只导入需要的部分，使用show关键字，eg：
 *  import 'package:lib1/lib1.dart' show foo;
 * ② 隐藏不需要的部分，使用hide关键字，eg：
 *  import 'package:lib1/lib1.dart' hide foo;
 */
demo_14_5() {
  // getName();
  getAge();
}

main() async {
  // demo_14_1();
  // demo_14_2();
  // await demo_14_3();
  // demo_14_4();
  demo_14_5();
}
