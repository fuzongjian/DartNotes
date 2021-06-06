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
          maxLines: 1,
          textScaleFactor: 2, //字体放大倍数
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red, // 字体颜色
            fontWeight: FontWeight.w300, // 字体加粗
            fontStyle: FontStyle.italic, //字体倾斜
            decoration: TextDecoration.lineThrough, //下划线
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.red, width: 2.0)),
      ),
    );
  }
}
