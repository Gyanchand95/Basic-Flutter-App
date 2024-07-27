import 'package:dice_first_app/dice_change.dart';
import 'package:flutter/material.dart';

const topLeftAlignment = Alignment.topLeft;
const bottomLeftAlignment = Alignment.bottomLeft;

// this class using for the full screen with Gradient

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});
  final Color firstColor;
  final Color secondColor;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: topLeftAlignment,
          end: bottomLeftAlignment,
        ),
      ),
      child: const Center(
        child: DiceChange(),
      ),
    );
  }
}
