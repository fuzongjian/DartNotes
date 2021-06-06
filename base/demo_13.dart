/**
 * 通俗理解：泛型就是解决类、接口、方法的复用性以及对不特定数据类型的支持（类型校验）
 */
// 1、泛型方法
// 以下方法实现传入什么类型的数据，就返回什么类型的数据
T getData<T>(T value) {
  return value;
}

// 只会对传入参数校验，不会对返回数据做校验
getOtherData<T>(T value) {
  return value;
}

demo_13_1() {
  // 没有进行类型校验
  print(getData(2021));
  print(getData('hello world~'));
  // 类型校验，传参的时候定义校验的类型
  print(getData<String>('1234'));
}

// 泛型类
class OurList<T> {
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }

  List getList() {
    return this.list;
  }
}

demo_13_2() {
  OurList l = new OurList();
  l.add(1);
  l.add('hello');
  l.add(true);
  print(l.getList());

  // 指定泛型的类型
  OurList l2 = new OurList<String>();
  l2.add('hello world === ');
  l2.add('2');
  print(l2.getList());
}

// 泛型接口
/**
 * Dart中的泛型接口
 * 实现数据的缓存功能：有文件缓存、内存缓存。文件缓存和内存缓存按照接口的约束实现
 * 1、定义一个泛型接口：约束实现它的子类必须有getByKey(key) 和 setByKey(key,value)
 * 2、要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致。
 */
abstract class Cache<T> {
  getByKey(String key);
  setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {}

  @override
  setByKey(String key, T value) {
    print('我是文件缓存，把key=${key} value=${value}的数据写入到了文件中');
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {}

  @override
  setByKey(String key, T value) {
    print('我是内存缓存，把key=${key} value=${value}的数据写入到了内存中');
  }
}

demo_13_3() {
  // 指定泛型为String

  MemoryCache m = new MemoryCache<String>();
  m.setByKey('key', 'string');

  MemoryCache m1 = new MemoryCache<Map>();
  m1.setByKey('key', {'name': 'John'});
}

main() {
  // demo_13_1();
  // demo_13_2();
  demo_13_3();
}
