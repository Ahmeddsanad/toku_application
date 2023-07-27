// import 'package:just_audio_cache/just_audio_cache.dart';

// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/Item_Model.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.number,
      required this.color,
      required this.itemType,
      required this.isPhrases});

  final Item number;
  final Color color;
  final String itemType;
  final bool isPhrases;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          isPhrases == true
              ? Container()
              : Container(
                  color: const Color(0xfffff6dc),
                  child: Image.asset(
                    number.Image!,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  number.enName!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              try {
                // AudioCache player = AudioCache(prefix: 'assets/sounds/$itemType/');
                // player.play('number.sound');

                print('Song playing');
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}


// Container(
//             color: const Color(0xfffff6dc),
//             child: Image.asset(
//               number.Image!,
//             ),
//           ),