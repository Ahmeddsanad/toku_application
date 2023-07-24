// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:toku_application/components/number_item.dart';
import 'package:toku_application/models/number_model.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  final One = const Number(
    Image: 'assets/images/numbers/number_one.png',
    enName: 'one',
    jpName: 'ichi',
  );
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
            number: One,
          ),
          NumberItem(
            number: One,
          ),
          NumberItem(
            number: One,
          ),
          NumberItem(
            number: One,
          ),
          NumberItem(
            number: One,
          ),
          NumberItem(
            number: One,
          ),
          NumberItem(
            number: One,
          ),
          NumberItem(
            number: One,
          ),
        ],
      ),
    );
  }
}
