// ignore_for_file: file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);
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
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(150)),
      ),

      // child: Image.network(
      //   "http://www.400537.com/img/cat300.jpg",
      //   color: Colors.blue,
      //   colorBlendMode: BlendMode.screen,
      //   fit: BoxFit.fill,
      //   repeat: ImageRepeat.repeatY,
      // ),

      child: ClipOval(
        child: Image.asset(
          "assets/images/cat100.png", //必须先去去pubspec.yaml/flutter/assets设置
          color: Colors.blue,
          colorBlendMode: BlendMode.screen,
          fit: BoxFit.fill,
          repeat: ImageRepeat.repeatY,
        ),
      ),
    ));
  }
}
