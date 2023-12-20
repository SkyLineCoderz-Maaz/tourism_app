import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_login.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_signup.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenSplash2 extends StatelessWidget {
  const ScreenSplash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImages(name: 'growth'),
          MediumText(
            text: 'Grow Your Business',
            color: Colors.black,
            // textPadding: EdgeInsets.only(top: 20),
          ),
          SmallText(
            text: 'Provide best deal and services to grow your business.',
            color: Colors.grey,
            // textPadding: EdgeInsets.only(top: 10),
          ),
          Spacer(),
          CustomButton(
              text: 'Login',
              width: Get.width,
              textFont: 18,
              shadowColor: Colors.black87,
              elevation: 25,
              onPressed: () {
                Get.to(ScreenLogin());
              }),
          Padding(
            padding: EdgeInsets.only(bottom: 60),
            child: CustomButton(
                text: 'Create Account',
                width: Get.width,
                textFont: 18,
                elevation: 10,
                textColor: Colors.black,
                color: Colors.white,
                onPressed: () {
                  Get.to(ScreenSignup());
                }),
          ),
        ],
      ).marginSymmetric(horizontal: 60),
    );
  }
}
