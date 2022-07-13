// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'res/ListData.dart';

class List1Widget extends StatelessWidget {
  const List1Widget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        children: _getList());
  }

  Widget build1(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (content, index) {
        return ListTile(
          title: Text(listData[index]['title']),
        );
      },
    );
  }

  Widget _parseListData(content, index) {
    return ListTile(
      title: Text(listData[index]['title']),
    );
  }

  Widget build2(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length, itemBuilder: _parseListData //定义了创建方法
        );
  }

  List<Widget> _getList() {
    List<Widget> list = [];
    String txt = "这是一行文字";
    for (int i = 0; i < 18; i++) {
      list.add(ListTile(
        title: Text("$txt ：$i"),
      ));
    }
    return list;
  }

  List<Widget> _getList1() {
    var list = listData.map((value) {
      //listData原子引用
      return ListTile(
        title: Text(APP_NAME + value["title"]),
      );
    });
    return list.toList();
  }
}
