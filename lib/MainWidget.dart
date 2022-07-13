// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:myflutter/HomeWidget.dart';
import 'package:myflutter/TextWidget.dart';
import 'package:myflutter/ImageWidget.dart';
import 'package:myflutter/ListWidget.dart';
import 'package:myflutter/List1Widget.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '这是个标题',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomeWidget(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("这里是AppBar"),
        ),
        body: const List1Widget(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {},
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
              tooltip: ("Home"),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "分类",
              tooltip: ("Category"),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "消息",
              tooltip: ("Message"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.update),
              label: "我的",
              tooltip: ("My"),
            ),
          ],
        ),
      ),
    );
  }
}
