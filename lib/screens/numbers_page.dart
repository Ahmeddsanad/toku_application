import 'package:flutter/material.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

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
                color: Color(0xfffff6dc),
                child: Image.asset('assets/images/numbers/number_one.png')),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ichi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    'one',
                    style: TextStyle(
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
