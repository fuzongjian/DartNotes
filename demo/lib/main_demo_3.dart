import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('flutter demo'),
          ),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: const Text(
          '求知若渴，虚怀若谷。求知若渴，虚怀若谷。求知若渴，虚怀若谷。求知若渴，虚怀若谷。',
          textAlign: TextAlign.right,
          // overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 2, //字体放大倍数
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red, // 字体颜色
            fontWeight: FontWeight.w300, // 字体加粗
            fontStyle: FontStyle.italic, //字体倾斜
            decoration: TextDecoration.lineThrough, //下划线
            decorationColor: Colors.blue, // 下划线颜色
            decorationStyle: TextDecorationStyle.dashed, // 下划线样式
            letterSpacing: 5.0, // 字间距
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          // 边框设置
          color: Colors.yellow,
          border: Border.all(color: Colors.red, width: 2.0),
          borderRadius: const BorderRadius.all(
            // 圆角
            Radius.circular(8.0),
          ),
        ),
        // padding: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.fromLTRB(5.0, 10.0, 1.0, 1.0), // 内边距
        margin: const EdgeInsets.all(10), // 外边距
        // transform: Matrix4.translationValues(10, 0, 0),// 位移
        // transform: Matrix4.rotationZ(-0.3), // 旋转
        // transform: Matrix4.diagonal3Values(1.2, 1.0, 1.0), // 缩放 x轴缩放1.2倍
        alignment: Alignment.topLeft,
      ),
    );
  }
}
