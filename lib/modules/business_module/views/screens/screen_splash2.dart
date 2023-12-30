import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_login.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_signup.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImages(name: 'growth'),
            SizedBox(height: 40.sp,),
            MediumText(
              text: 'Grow Your Business',
            ),
            SizedBox(height:10.sp,),
            SmallText(
              text: 'Provide best deal and services to grow your',
              color: Colors.grey,
            ),
            SmallText(text: 'business.',color: Colors.grey,),
            SizedBox(height: 40.sp,),
            CustomButton(
                text: 'Login',
                onPressed: () {
                  Get.off(ScreenLogin());
                }),
            CustomButton(
                text: 'Create Account',
                textColor: Colors.black,
                color: Colors.white,
                onPressed: () {
                  Get.off(ScreenSignup());
                }),
          ],
        ).marginSymmetric(horizontal: 30),
      ),
    );
  }
}
