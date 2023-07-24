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
      body: ListView.builder(
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
// display only the items on the screen and when scrolling down it display The rest of the items not all as for loop

// يعني ب اختصار ال ليست فيو افضل ف انها مش بتعرضهم كلهم مره واحده بتعرض بس اللي قدامك على الشاشه ولما تسكرول دوان بيبتدي يبني الويدجت الجديدة ويعرضها مش زي الفور لووب 
