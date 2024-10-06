import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/view/widgets/custom_button.dart';
import 'package:musify/view/widgets/custom_text.dart';
import 'package:musify/view/widgets/mode_box.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/choose_mode_wallpaper.png',
            scale: 0.95,
            fit: BoxFit.none,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/spotify_logo.png'),
                SizedBox(height: 100),
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Choose mode",
                        fontSize: 24,
                      ),
                      const ModeBox(),
                      CustomButton(
                        text: "Get Started",
                        onTap: () {
                          Get.offAllNamed("/resigster_or_signin");
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
