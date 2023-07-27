// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:toku_application/components/number_item.dart';
import 'package:toku_application/models/Item_Model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<Item> FamilyMembersList = const [
    Item(
        Image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'Chichioya',
        sound: 'father.wav'),
    Item(
        Image: 'assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'Hahaoya',
        sound: 'mother.wav'),
    Item(
        Image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'Musume',
        sound: 'daughter.wav'),
    Item(
        Image: 'assets/images/family_members/family_grandfather.png',
        enName: 'grandfather',
        jpName: 'Ojīsan',
        sound: 'grand_father.wav'),
    Item(
        Image: 'assets/images/family_members/family_grandmother.png',
        enName: 'grandmother',
        jpName: 'O bāchan',
        sound: 'grand_mother.wav'),
    Item(
        Image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older brother',
        jpName: 'Ani',
        sound: 'older_brother.wav'),
    Item(
        Image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older sister',
        jpName: 'Ane',
        sound: 'older_sister.wav'),
    Item(
        Image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'Musuko',
        sound: 'son.wav'),
    Item(
        Image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'Otōto',
        sound: 'younger_brother.wav'),
    Item(
        Image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'Imōto',
        sound: 'family_younger_sister.wav'),
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
          number: FamilyMembersList[index],
          color: const Color(0xff528031),
          itemType: 'family_members',
        ),
        itemCount: FamilyMembersList.length,
      ),
    );
  }
}
