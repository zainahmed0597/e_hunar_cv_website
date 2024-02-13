import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/color_palettes.dart';
import '../utils/strings.dart';
import '../widgets/button/gradient_button_container.dart';
import '../widgets/icons/padded_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 250, vertical: 30),
        child: Column(
          children: [
            // Logo here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    logoOnly1,
                  ),
                ),
                Row(
                  children: [
                    PaddedIcon(
                      fIcon: FontAwesomeIcons.facebookF,
                      color: color3,
                    ),
                    PaddedIcon(
                      fIcon: FontAwesomeIcons.twitter,
                      color: color4,
                    ),
                    PaddedIcon(
                      fIcon: FontAwesomeIcons.youtube,
                      color: color5,
                    ),
                    PaddedIcon(
                      fIcon: FontAwesomeIcons.instagram,
                      color: color6,
                    ),
                    const SizedBox(width: 20),
                    GradientButtonContainer(
                      height: 80,
                      width: 250,
                      clr: [color7, color7],
                      title: downloadCv,
                      isGradientVertical: false,
                      overlayColor: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
