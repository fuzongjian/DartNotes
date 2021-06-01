/* Dart集合类型List、Set、Map详解 以及循环语句forEach、map、where、any、every */

/// 【1】list常见操作
demo_6_1() {
  var list = [1, 2, 3, 4, 5];
  print('list === $list');
  var isempty = list.isEmpty;
  print('isEmpty === $isempty');
  var isnotEmpty = list.isNotEmpty;
  print('isnotEmpty === $isnotEmpty');
  // 翻转得到新的list
  var newList = list.reversed.toList();
  print('reversed === $newList --- $list');
}

demo_6_2() {
  var list = [1, 2, 3, 4, 5];
  print(list);
  // 增加单个
  list.add(5);
  print(list);
  // 两个list拼接
  list.addAll([6, 7]);
  print(list);
  // 查找，-1为未查找到，其他值为该值的索引
  var index = list.indexOf(0);
  print(index);
  // 根据值进行删除  remove 只会删除一个，即使有两个相同的值
  list.remove(5);
  print(list);
  // 根据索引进行删除
  list.removeAt(5);
  print(list);
}

demo_6_3() {
  var list = [1, 2, 3, 4, 5];
  print(list);
  // 修改
  list.fillRange(1, 2, 99);
  print(list);
  // 插入单个
  list.insert(2, 66);
  print(list);
  // 插入多个
  list.insertAll(3, [77, 88]);
  print(list);
}

demo_6_4() {
  var list = [1, 2, 3, 4, 5];
  print(list);
  // list 转换为字符串
  var string = list.join(',');
  print(string);
  // 字符串分割为list
  var newList = string.split(',');
  print(newList);
}

/// 【2】Set 是没有顺序且不能重复的集合，所以不能通过索引去获取值
/// 最主要的功能是给数组去重
demo_6_5() {
  var set = new Set();
  set.add(1);
  set.add(2);
  print(set);
  // 添加相同的数据，没有效果
  set.add(2);
  print('Set添加相同的数据，没有效果 === $set');
  // 转换为list
  var list = set.toList();
  print('转为为list === $list');

  // list去重
  var list1 = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5];
  var newSet = new Set();
  newSet.addAll(list1);
  var newList = newSet.toList();
  print('list === $list  去重后newSet === $newSet  去重后的list === $newList');
}

/// 【3】Maps 是无序的键值对  keys、values、isEmpty、isNotEmpty
demo_6_6() {
  var newMap = new Map();
  print(newMap);

  var map = {'name': 'skyle', 'age': 25, 'score': 145};
  print(map.keys.toList());
  print(map.values.toList());
  print(map.isEmpty);
  print(map.isNotEmpty);

  // 增加属性
  map.addAll({'work': 'Node, Dart'});
  print(map);
  // 删除属性
  map.remove('score');
  print(map);
  // 包含某个属性或值
  print(map.containsKey('name'));
  print(map.containsValue('skyle'));
}

/// 【4】forEach、map、where、any、every
/// list map set 都有这些方法
demo_6_7() {
  var list = [1, 2, 3, 4, 5];
  print(list);
  //  for 循环
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  // for in
  for (var item in list) {
    print(item);
  }
  // forEach 只能传入一个值
  list.forEach((element) {
    print(element);
  });

  // map
  var newList = list.map((e) => e * 2);
  print(newList.toList());
  // where  返回满足要求的值且组成新的数组
  var whereList = list.where((element) => element % 2 == 0);
  print(whereList.toList());
  // any 数组有满足条件就返回true
  var state = list.any((element) => element % 1 == 0);
  print(state);
  // every 每一个都满足才返回true
  var state1 = list.every((element) => element % 2 == 0);
  print(state1);
}

main() {
  print('Dart集合类型List、Set、Map详解 以及循环语句forEach、map、where、any、every');

  // demo_6_1();
  // demo_6_2();
  // demo_6_3();
  // demo_6_4();
  // demo_6_5();
  // demo_6_6();
  demo_6_7();
}
