import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter demo')),
        body: HomeContent3(),
      ),
    );
  }
}

// 引入本地图片
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'images/people.jpeg',
          fit: BoxFit.cover,
        ),
        width: 300,
        height: 300,
      ),
    );
  }
}

// Flutter实现圆角以及实现圆形图片
// 实现圆角的第一中方法
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(150),
          // ),
          borderRadius: BorderRadius.circular(150),
          image: const DecorationImage(
            image: NetworkImage(
                'https://winnorm.oss-cn-chengdu.aliyuncs.com/manage/1620977380757_lawyer_people.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// 实现圆角的第二中方法
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            'https://winnorm.oss-cn-chengdu.aliyuncs.com/manage/1620977380757_lawyer_people.jpeg',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// 加载远程图片
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: sized_box_for_whitespace
      child: Container(
        child: Image.network(
          // 加载远程图片
          'https://winnorm.oss-cn-chengdu.aliyuncs.com/manage/1620977380757_lawyer_people.jpeg',
          // 位置
          // alignment: Alignment.topLeft,

          // 图片的混合颜色
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,

          // 填充模式
          // cover: 显示可能拉伸、裁剪、充满(图片充满整个容器，还不变形)
          // fill: 全图显示，图片会被拉伸，并充满父容器
          // contain: 全图显示，显示原比例、可能会有间隙
          // fitWidth: 横向充满
          // fitHeight: 纵向充满
          // fit: BoxFit.fitHeight,

          // repeat
          repeat: ImageRepeat.repeatX,
        ),
        width: 300,
        height: 300,
        decoration: const BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
