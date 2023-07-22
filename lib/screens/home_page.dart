import 'package:flutter/material.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3D9),
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
        backgroundColor: const Color(0xff463228),
      ),
      body: Column(
        children: [
          Category(
            color: Color(0xfff99531),
            text: 'Numbers',
          ),
          Category(
            color: const Color(0xff528031),
            text: 'Family Members',
          ),
          Category(
            color: const Color(0xff7d3fa2),
            text: 'Colors',
          ),
          Category(
            color: const Color(0xff46a5ca),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
