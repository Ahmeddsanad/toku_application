// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color, this.text, this.onTap});

  String? text;
  Color? color;
  Function()? onTap;
  // VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
