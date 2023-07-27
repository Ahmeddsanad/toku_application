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
        sound: 'number_one_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'ni',
        sound: 'number_two_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'mittsu',
        sound: 'number_three_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'shi',
        sound: 'number_four_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'go',
        sound: 'number_five_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'roku',
        sound: 'number_six_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'sebun',
        sound: 'number_seven_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi',
        sound: 'number_eight_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'kyū',
        sound: 'number_nine_sound.mp3'),
    Number(
        Image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'jū',
        sound: 'number_ten_sound.mp3'),
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
        itemBuilder: (context, index) => NumberItem(
          number: NumbersList[index],
        ),
        itemCount: NumbersList.length,
      ),
    );
  }
}

List<Widget> getList(List<Number> numbers) {
  List<Widget> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(
      NumberItem(
        number: numbers[i],
      ),
    );
  }

  return itemList;
}

// listview.builder is better than using for loop to display items in screen
// because ordinary for loop display all items, whereas listview.builder
// display only the items on the screen and when scrolling down it display
// The rest of the items not all as for loop

// يعني ب اختصار ال ليست فيو افضل ف انها مش بتعرضهم كلهم مره واحده بتعرض بس اللي قدامك على الشاشه ولما تسكرول دوان بيبتدي يبني الويدجت الجديدة ويعرضها مش زي الفور لووب 
