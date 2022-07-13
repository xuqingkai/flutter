// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 300.0,
      height: 300.0,
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.fromLTRB(1, 2, 3, 4),
      transform: Matrix4.translationValues(10, 20, 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 1.0)),
      child: const Text(
        "这是一行文本框",
        style: TextStyle(backgroundColor: Colors.blue),
      ),
    ));
  }
}
