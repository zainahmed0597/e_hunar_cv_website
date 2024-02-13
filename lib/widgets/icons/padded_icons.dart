import 'package:flutter/material.dart';

class PaddedIcon extends StatelessWidget {
  final IconData fIcon;
  final double? padding;
  final Color color;

  const PaddedIcon({
    super.key,
    required this.fIcon,
    this.padding,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding != null
          ? EdgeInsets.all(padding!)
          : const EdgeInsets.all(8.0),
      child: Icon(
        fIcon,
        color: color,
      ),
    );
  }
}
