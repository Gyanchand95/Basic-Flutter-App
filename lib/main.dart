import 'package:flutter/material.dart';
import 'package:dice_first_app/gradient_container.dart';

//This is main class app staring point
void main() {
  runApp(
  const MaterialApp(
        home: Scaffold(
      body: GradientContainer(Colors.white,Colors.black45),
    )
    ),
  );
}

