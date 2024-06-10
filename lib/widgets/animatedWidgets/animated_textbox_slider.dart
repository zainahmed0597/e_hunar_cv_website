import 'package:flutter/material.dart';
import '../../utils/color_palettes.dart';
import '../text/poppins.dart';

class AnimatedTextBoxSlider extends StatefulWidget {
  final IconData icon;
  final String title;
  final double? width;
  final Color? color;
  final Function() onPressed;
  final String tabData;

  const AnimatedTextBoxSlider(
      {super.key,

        required this.icon,
        required this.title,
        this.color,
        this.width,
        required this.onPressed,
        required this.tabData});

  @override
  State<AnimatedTextBoxSlider> createState() => _AnimatedTextBoxSliderState();
}

class _AnimatedTextBoxSliderState extends State<AnimatedTextBoxSlider> {
  bool showText = false;

  double adjustWidth() {
    if (showText) {
      return widget.width ?? 250;
    } else {
      if (widget.tabData == widget.title) {
        setState(() {
          showText = true;
        });
        return widget.width ?? 250;
      } else {
        return 130;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            showText = true;
          });
        },
        onExit: (event) {
          setState(() {
            showText = false;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: 130,
            width: adjustWidth(),
            decoration: BoxDecoration(
                color: widget.tabData == widget.title ? color5 : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.01),
                    spreadRadius: 10,
                    blurRadius: 20,
                  ),
                ]),
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      widget.icon,
                      size: 35,
                      color: widget.tabData == widget.title
                          ? widget.color
                          : widget.color,
                    ),
                    showText ? const SizedBox(width: 30) : Container(),
                    showText ? Poppins(
                      text: widget.title,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: color1,
                    ) : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}