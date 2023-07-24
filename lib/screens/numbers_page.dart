// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

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
      body: Container(
        height: 100,
        color: const Color(0xfff99531),
        child: Row(
          children: [
            Container(
              color: const Color(0xfffff6dc),
              child: Image.asset(
                One.Image!,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    One.jpName!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    One.enName!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Number {
  final String? Image;
  final String? jpName;
  final String? enName;

  const Number({
    this.Image,
    this.enName,
    this.jpName,
  });
}
