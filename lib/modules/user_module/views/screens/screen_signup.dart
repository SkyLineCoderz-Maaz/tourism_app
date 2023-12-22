import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_login.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Get.back(result: true);
        },
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ExtraLargeText(
                text: 'Signup',
              ),
            ),
            SizedBox(height: 20.sp,),
            LargeText(
              text: 'App Logo',
            ),
            SizedBox(height: 20.sp,),
            MediumText(
              text: 'Let’s Get It Started!',
            ),
            SizedBox(height: 20.sp,),
            CustomInputField(
              hint: 'First Name',
            ),
            SizedBox(height: 20.sp,),
            CustomInputField(
              hint: 'Last Name',
            ),
            SizedBox(height: 20.sp,),
            CustomInputField(
              hint: 'Email',
            ),
            SizedBox(height: 20.sp,),
            CustomInputField(
              hint: 'Password',
              padding: EdgeInsets.only(top: 15.sp, left: 12.sp),
              isPasswordField: true,
            ),
            SizedBox(height: 20.sp,),
            CustomButton(text: 'Signup', onPressed: () {}),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Facebook",
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/facebook (8) 1.svg"),
                    color: Color(0xFF365194),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    text: "Google",
                    onPressed: () {},
                    icon: Image.asset("assets/icons/ic_google.png"),
                  ),
                ),
              ],
            ).marginSymmetric(vertical: 20.sp),
            RichText(
                text: TextSpan(
                    text: "Already have an account ",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(text: "|"),
                      TextSpan(
                        text: " Login",
                        style: TextStyle(color: appColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.off(ScreenLogin()),
                      )
                    ])),
          ],
        ).marginSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
