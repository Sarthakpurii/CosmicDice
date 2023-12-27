import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colorList,{super.key});
  final List<Color> colorList;
  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colorList,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight

            ),
          ),
          child: const Center(
            child: StyledText("Roll Dice"),
          ),
        );
  }
}

