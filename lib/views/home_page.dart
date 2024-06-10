import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/color_palettes.dart';
import '../utils/strings.dart';
import '../widgets/AnimatedWidgets/animated_shape_container.dart';
import '../widgets/AnimatedWidgets/animated_textbox_slider.dart';
import '../widgets/Text/poppins.dart';
import '../widgets/animatedWidgets/shapes/lineShape.dart';
import '../widgets/button/gradient_button_container.dart';
import '../widgets/button/haptic_circle.dart';
import '../widgets/cursor/animated_circle_cursor.dart';
import '../widgets/icons/padded_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color2,
        body: Stack(
          children: [
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 250, vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top bar and left side area here
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Logo here
                        AnimatedCircleCursorMouseRegion(
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              logoOnly1,
                            ),
                          ),
                        ),
                        // Right side widgets
                        Row(
                          children: [
                            // 4 social media icons here
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
                            // cv button here
                            AnimatedCircleCursorMouseRegion(
                              child: GradientButtonContainer(
                                height: 80,
                                width: 250,
                                clr: [color8, color8],
                                title: downloadCv,
                                isGradientVertical: false,
                                overlayColor: color1,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 601,
                              // color: color3,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Poppins(
                                      text: im,
                                      color: color8,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Poppins(
                                      text: myName,
                                      color: color1,
                                      fontSize: 100,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Poppins(
                                      text: description,
                                      color: color1,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  // Container(
                                  //   height: 90,
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.white,
                                  //     borderRadius: BorderRadius.circular(
                                  //         10), // Adjust the radius as needed
                                  //   ),
                                  // ),
                                  const SizedBox(height: 30),
                                  Row(
                                    children: [
                                      const AnimatedCircleCursorMouseRegion(
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: HapticCircle()),
                                      ),
                                      const SizedBox(width: 30),
                                      AnimatedCircleCursorMouseRegion(
                                        child: Poppins(
                                          text: play,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              const Positioned(
                                  top: 30,
                                  left: 100,
                                  child: AnimatedShapeContainer()),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const SizedBox(height: 40),
                                    SizedBox(
                                      height: 500,
                                      child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(30),
                                          ),
                                          child: Image.asset(
                                            profile,
                                            fit: BoxFit.fill,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.info,
                          title: aboutMe,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.addressBook,
                          title: resume,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.thinkPeaks,
                          title: portfolio,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.gear,
                          title: aboutMe,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.star,
                          title: service,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.blog,
                          title: blog,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                        AnimatedTextBoxSlider(
                          icon: FontAwesomeIcons.envelope,
                          title: contact,
                          tabData: "none",
                          color: color8,
                          width: 250,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    LineShape(),
                    Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}