import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_login.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash1.png"),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          children: [
            CustomImages(name: "splash2"),
            LargeText(
              text: "Tourism",
              color: appColor,
            ),
            Spacer(),
            CustomButton(
              height: 45,
              text: "Get Started",
              onPressed: () {
                Get.to(ScreenLogin());
              },
              width: Get.width * .7,
            ),
            RichText(
                text: TextSpan(
                    text: "Already have an account ",
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Get.to(ScreenLogin()),
                    children: [
                  TextSpan(text: "|"),
                  TextSpan(text: " Login"),
                ])).marginSymmetric(vertical: 30),
          ],
        ).paddingSymmetric(horizontal: 20, vertical: 30),
      ),
    ));
  }
}
