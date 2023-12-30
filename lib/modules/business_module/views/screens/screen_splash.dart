import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_login.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_splash2.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                  Get.off(ScreenSplash2());
                },
                width: Get.width * .7,
              ),
              RichText(
                  text: TextSpan(
                      text: "Already have an account ",
                      children: [
                    TextSpan(text: "|",style: TextStyle(color: Colors.grey,fontSize: 12.sp)),
                    TextSpan(text: " Login",style: TextStyle(fontSize: 12.sp),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.off(ScreenLogin()),),
                  ])).marginSymmetric(vertical: 20.sp),
            ],
          ).paddingSymmetric(horizontal: 10.sp, vertical: 20.sp),
                ),
              ),
        ));
  }
}
