import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}
final randomizer = Random();
class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = randomizer.nextInt(6) + 1;
  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice-$currentDiceRoll.png',width: 200,),
          const SizedBox(height: 20,),
          TextButton(
              onPressed: rollDice,
              style:  const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                textStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(fontSize: 28),),
              ),
              child: const Text("Roll Dice")
          ),
        ]);
  }

}