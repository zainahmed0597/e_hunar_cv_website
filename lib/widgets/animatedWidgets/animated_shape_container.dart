import 'package:flutter/material.dart';
import '../../utils/color_palettes.dart';
import 'dart:math' as math;

class AnimatedShapeContainer extends StatefulWidget {
  const AnimatedShapeContainer({
    super.key,
  });

  @override
  State<AnimatedShapeContainer> createState() => _AnimatedShapeContainerState();
}

class _AnimatedShapeContainerState extends State<AnimatedShapeContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 10),
        reverseDuration: const Duration(seconds: 10));
    controller.forward();
    animation = Tween<double>(begin: -math.pi / 4, end: -math.pi / 3)
        .animate(controller);

    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reverse();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Transform.rotate(
            angle: animation.value,
            child: Container(
              height: 500,
              width: 354,
              decoration: BoxDecoration(
                color: color8,
                borderRadius:
                    BorderRadius.circular(30), // Adjust the radius as needed
              ),
            ),
          );
        });
  }
}
