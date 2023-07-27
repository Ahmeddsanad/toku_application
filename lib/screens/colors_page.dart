// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:toku_application/components/number_item.dart';
import 'package:toku_application/models/Item_Model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item> ColorsList = const [
    Item(
        Image: 'assets/images/colors/color_black.png',
        enName: 'black',
        jpName: 'Kuro',
        sound: 'black.wav'),
    Item(
        Image: 'assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo',
        sound: 'brown.wav'),
    Item(
        Image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty yellow',
        jpName: 'Dasutiierō',
        sound: 'dusty yellow.wav'),
    Item(
        Image: 'assets/images/colors/color_gray.png',
        enName: 'gray',
        jpName: 'Gurē',
        sound: 'gray.wav'),
    Item(
        Image: 'assets/images/colors/color_green.png',
        enName: 'green',
        jpName: 'Midori',
        sound: 'green.wav'),
    Item(
        Image: 'assets/images/colors/color_red.png',
        enName: 'red',
        jpName: 'Aka',
        sound: 'red.wav'),
    Item(
        Image: 'assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Shiro',
        sound: 'white.wav'),
    Item(
        Image: 'assets/images/colors/yellow.png',
        enName: 'yellow',
        jpName: 'Kiiro',
        sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new)),
        elevation: 0.0,
        backgroundColor: const Color(0xff473025),
        title: const Text('Numbers'),
        titleSpacing: 0.0,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListItem(
          number: ColorsList[index],
          color: const Color(0xff7d3fa2),
          itemType: 'colors',
        ),
        itemCount: ColorsList.length,
      ),
    );
  }
}
