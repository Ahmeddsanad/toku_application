import 'package:flutter/material.dart';

import '../models/number_model.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xfff99531),
      child: Row(
        children: [
          Container(
            color: const Color(0xfffff6dc),
            child: Image.asset(
              number.Image!,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
