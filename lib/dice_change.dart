import 'dart:math';
import 'package:flutter/material.dart';


//This class is using for handle the state of the Image when clicking on button and change the image

final randomNumber = Random();

class DiceChange extends StatefulWidget{
  const DiceChange({super.key});
  @override
  State<DiceChange> createState() {
    return _DiceChangeState();
  }
}

class _DiceChangeState extends State<DiceChange>{
  var currentNumber = 2;
  
  void rollDice() {
    setState(() {
       currentNumber = randomNumber.nextInt(6) + 1; //Generating number from 1 to 6
      
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/image/dice-$currentNumber.png', width: 200),
            const SizedBox(height: 20,),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice'))
          ],
        );
  }

}