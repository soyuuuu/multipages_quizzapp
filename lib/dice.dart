import 'dart:math';
import 'package:flutter/material.dart';


class DicePage extends StatefulWidget {
  final int score;
  const DicePage({Key? key, required this.score}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int Dice1Number = 0;
  int Dice2Number = 0;
  int Dice3Number = 0;
  int Sum =0;
  int button = ;


  void changeDiceFace() {
    setState(() {
      Dice1Number = Random().nextInt(9) + 1;
      Dice2Number = Random().nextInt(9) + 1;
      Dice3Number = Random().nextInt(9) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SizedBox(height: 20),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image.asset(
                    'images/slot$Dice1Number.png',
                  ),
                  onPressed: () {
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset(
                    'images/slot$Dice2Number.png',
                  ),
                  onPressed: () {
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset(
                    'images/slot$Dice3Number.png',
                  ),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Sum = $Sum',
          style: TextStyle(fontSize: 35,color: Colors.black),
        ),
        SizedBox(height: 15),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 35,color: Colors.black),
            primary: Colors.cyan,
          ),
          onPressed: () {
            setState(() {
              changeDiceFace();
                Sum = Sum+Dice1Number+Dice2Number+Dice3Number;

            });
          },
          child: const Text(
            'Reroll',
          ),
        ),
      ],
    );
  }
}
