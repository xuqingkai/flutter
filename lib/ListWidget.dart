// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text("这是主标题"),
          subtitle: Text("这是子标题"),
        ),
        const ListTile(
          title: Text("这是主标题"),
          subtitle: Text("这是子标题"),
          trailing: Icon(Icons.home),
        ),
        ListTile(
          leading: SvgPicture.network("http://www.400537.com/img/icon.svg"),
          title: const Text("这是主标题"),
          subtitle: const Text("这是子标题"),
          trailing: const Icon(Icons.home),
        ),
        Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(10),
          color: Colors.blue,
          child: ListView(
            children: <Widget>[
              Image.network("http://www.400537.com/img/cat100.png"),
              const Text("这是里面的一个文字")
            ],
          ),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text("这是主标题"),
          subtitle: Text("这是子标题"),
        ),
      ],
    );
  }
}
