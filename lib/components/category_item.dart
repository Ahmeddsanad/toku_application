import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text});

  String? text;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        24,
      ),
      alignment: Alignment.centerLeft,
      color: color,
      width: double.infinity,
      height: 65.0,
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
