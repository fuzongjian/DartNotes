class Animal {
  String name;
  int age;
  String _sex = 'male'; // 私有属性，只有单独在一个文件中有效
  Animal(this.name, this.age);
  printInfo() {
    print('${this.name} === ${this.age} === ${this._sex}');
  }

  setSex(String sex) {
    this._sex = sex;
  }

  _eat() {
    print('这是一个私有方法');
  }

  execEat() {
    this._eat();
  }
}
