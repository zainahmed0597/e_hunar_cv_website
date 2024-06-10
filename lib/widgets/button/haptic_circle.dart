import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/color_palettes.dart';
import '../cursor/animated_circle_cursor.dart';

class HapticCircle extends StatefulWidget {
  const HapticCircle({
    super.key,
  });

  @override
  State<HapticCircle> createState() => _HapticCircleState();
}

class _HapticCircleState extends State<HapticCircle> {
  double currentRadius = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: MouseRegion(
        onEnter: (event){
          setState(() {
            currentRadius = 10;
          });
        },
        onExit: (event){
          setState(() {
            currentRadius = 0;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(microseconds: 100),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color8,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: currentRadius)
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Icon(FontAwesomeIcons.play, color: color2),
          ),
        ),
      ),
    );
  }
}
