import 'package:flutter/material.dart';

//this class using for the Text button  and set the dynamic name of the button
class StyledText extends StatelessWidget{
const StyledText(this.text,{super.key});
 final String text;
  @override
   Widget build(BuildContext context){
     return  Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 28.5),
        );
   }
}