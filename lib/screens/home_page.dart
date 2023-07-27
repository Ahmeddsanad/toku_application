import 'package:flutter/material.dart';
import 'package:toku_application/screens/colors_page.dart';
import 'package:toku_application/screens/familymembers_page.dart';
import 'package:toku_application/screens/phrases_page.dart';

import '../components/category_item.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3D9),
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
        backgroundColor: const Color(0xff463228),
      ),
      body: Column(
        children: [
          Category(
            color: const Color(0xfff99531),
            text: 'Numbers',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Numbers();
                },
              ));
            },
          ),
          Category(
            color: const Color(0xff528031),
            text: 'Family Members',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return FamilyMembersPage();
                },
              ));
            },
          ),
          Category(
            color: const Color(0xff7d3fa2),
            text: 'Colors',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ColorsPage();
                },
              ));
            },
          ),
          Category(
            color: const Color(0xff46a5ca),
            text: 'Phrases',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PhrasesPage();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
