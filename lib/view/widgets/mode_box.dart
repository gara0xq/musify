import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:musify/constant/colors.dart';
import 'package:musify/view/widgets/custom_text.dart';

class ModeBox extends StatefulWidget {
  const ModeBox({super.key});

  @override
  State<ModeBox> createState() => _ModeBoxState();
}

class _ModeBoxState extends State<ModeBox> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            index == 1
                ? _activeButton(Icons.dark_mode_outlined, () {
                    setState(() {
                      index = 1;
                    });
                  })
                : _disactiveButton(Icons.dark_mode_outlined, () {
                    setState(() {
                      index = 1;
                    });
                  }),
            const SizedBox(height: 20),
            CustomText(text: "Dark Mode"),
          ],
        ),
        const SizedBox(width: 100),
        Column(
          children: [
            index == 2
                ? _activeButton(Icons.light_mode_outlined, () {
                    setState(() {
                      index = 2;
                    });
                  })
                : _disactiveButton(Icons.light_mode_outlined, () {
                    setState(() {
                      index = 2;
                    });
                  }),
            const SizedBox(height: 20),
            CustomText(text: "Light Mode"),
          ],
        )
      ],
    );
  }
}

_activeButton(IconData icon, void Function()? onTap) => GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 85,
        width: 80,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    center: Alignment.bottomCenter,
                    radius: 5,
                    colors: [
                      primaryColor,
                      Color.fromARGB(50, 255, 255, 255),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomCenter,
                  radius: 0.6,
                  colors: [
                    primaryColor,
                    forignColor,
                  ],
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );

_disactiveButton(IconData icon, void Function()? onTap) => GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 85,
        width: 80,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: forignColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
