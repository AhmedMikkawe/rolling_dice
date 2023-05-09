import 'package:flutter/material.dart';

import 'package:rolling_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget{
    const GradientContainer(this.colors,{super.key});
  final List<Color> colors;
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,end: Alignment.bottomRight,
            colors: colors
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}