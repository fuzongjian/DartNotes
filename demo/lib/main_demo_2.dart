import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 自定义一个组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello flutter ~',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0,
            // color: Colors.red,
            color: Color.fromRGBO(244, 12, 12, 0.5)),
      ),
    );
  }
}
