// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:toku_application/components/number_item.dart';
import 'package:toku_application/models/number_model.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final List<Number> NumbersList = const [
    Number(
      Image: 'assets/images/numbers/number_one.png',
      enName: 'one',
      jpName: 'ichi',
    ),
    Number(
      Image: 'assets/images/numbers/number_two.png',
      enName: 'two',
      jpName: 'ni',
    ),
    Number(
      Image: 'assets/images/numbers/number_three.png',
      enName: 'three',
      jpName: 'mittsu',
    ),
    Number(
      Image: 'assets/images/numbers/number_four.png',
      enName: 'four',
      jpName: 'shi',
    ),
    Number(
      Image: 'assets/images/numbers/number_five.png',
      enName: 'five',
      jpName: 'go',
    ),
    Number(
      Image: 'assets/images/numbers/number_six.png',
      enName: 'six',
      jpName: 'roku',
    ),
    Number(
      Image: 'assets/images/numbers/number_seven.png',
      enName: 'seven',
      jpName: 'sebun',
    ),
    Number(
      Image: 'assets/images/numbers/number_eight.png',
      enName: 'eight',
      jpName: 'hachi',
    ),
    Number(
      Image: 'assets/images/numbers/number_nine.png',
      enName: 'nine',
      jpName: 'kyū',
    ),
    Number(
      Image: 'assets/images/numbers/number_ten.png',
      enName: 'ten',
      jpName: 'jū',
    ),
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
      body: ListView(
        children: [
          NumberItem(
            number: NumbersList[0],
          ),
          NumberItem(
            number: NumbersList[1],
          ),
          NumberItem(
            number: NumbersList[2],
          ),
          NumberItem(
            number: NumbersList[3],
          ),
          NumberItem(
            number: NumbersList[4],
          ),
          NumberItem(
            number: NumbersList[5],
          ),
          NumberItem(
            number: NumbersList[6],
          ),
          NumberItem(
            number: NumbersList[7],
          ),
          NumberItem(
            number: NumbersList[8],
          ),
          NumberItem(
            number: NumbersList[9],
          ),
        ],
      ),
    );
  }
}
