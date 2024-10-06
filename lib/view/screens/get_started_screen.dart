import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/constant/colors.dart';
import 'package:musify/view/widgets/custom_button.dart';
import 'package:musify/view/widgets/custom_text.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/get_started_wallpaper.png',
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
                        text: "Enjoy listening to music",
                        fontSize: 24,
                      ),
                      SizedBox(
                        width: 280,
                        child: CustomText(
                          text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.",
                          fontSize: 16,
                          color: greyText,
                        ),
                      ),
                      CustomButton(
                        text: "Get Started",
                        onTap: () {
                          Get.offAllNamed("/choose_mode");
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
