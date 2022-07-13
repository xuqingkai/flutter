// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "中间的一行文本文字",
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40.0, color: Colors.red),
      ),
    );
  }
}
