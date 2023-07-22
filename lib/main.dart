// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFF3D9),
        appBar: AppBar(
          title: const Text(
            'Toku',
          ),
          backgroundColor: const Color(0xff463228),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(
                24,
              ),
              alignment: Alignment.centerLeft,
              color: const Color(0xfff99531),
              width: double.infinity,
              height: 65.0,
              child: const Text(
                'Numbers',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(
                24,
              ),
              alignment: Alignment.centerLeft,
              color: const Color(0xff528031),
              width: double.infinity,
              height: 65.0,
              child: const Text(
                'Family Members',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(
                24,
              ),
              alignment: Alignment.centerLeft,
              color: const Color(0xff7d3fa2),
              width: double.infinity,
              height: 65.0,
              child: const Text(
                'Colors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(
                24,
              ),
              alignment: Alignment.centerLeft,
              color: const Color(0xff46a5ca),
              width: double.infinity,
              height: 65.0,
              child: const Text(
                'Phrases',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget HomeItem({
  required String text,
  required int color,
}) =>
    Container(
      padding: const EdgeInsets.all(
        24,
      ),
      alignment: Alignment.centerLeft,
      color: Color(color),
      width: double.infinity,
      height: 65.0,
      child: Text(
        '$text',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
