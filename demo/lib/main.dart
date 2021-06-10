import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('demo demo')),
        body: HomeContent(),
      ),
    );
  }
}

// 加载远程图片
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const ListTile(
          leading: Icon(Icons.search, color: Colors.red, size: 35),
          title: Text(
            '求知若渴，虚怀若谷',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('我是副标题'),
        ),
        const ListTile(
          trailing: Icon(Icons.home, color: Colors.red, size: 35),
          title: Text(
            '求知若渴，虚怀若谷',
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text('我是副标题'),
        ),
      ],
    );
  }
}
