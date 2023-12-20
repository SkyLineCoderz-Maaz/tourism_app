import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_signup.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(alignment: Alignment.centerLeft, child: LargeText(text: "Login")),
          ExtraLargeText(text: "App Logo").marginOnly(top: 15),
          SmallText(text: "Welcome back !").marginSymmetric(vertical: 15),
          CustomInputField(
            hint: "Email",
          ).marginSymmetric(vertical: 10),
          CustomInputField(
            hint: "Password",
            padding: EdgeInsets.only(top: 15.5.sp, left: 10.sp),
            isPasswordField: true,
          ).marginOnly(top: 20),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black),
                  ))),
          CustomButton(text: "Login", onPressed: () {}).marginSymmetric(vertical: 20),
          Row(
            children: [
              Expanded(
                  child: Divider(
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              )),
              Text("Or"),
              Expanded(
                  child: Divider(
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              )),
            ],
          ).marginSymmetric(vertical: 20),
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
          ).marginSymmetric(vertical: 20),
          RichText(
              text: TextSpan(
                  text: "Don’t have an account  ",
                  style: TextStyle(color: Colors.grey),
                  children: [
                TextSpan(text: "|"),
                TextSpan(
                  text: " Sign up",
                  style: TextStyle(color: appColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(ScreenSignup()),
                )
              ]))
        ],
      ).marginSymmetric(horizontal: 20.sp),
    );
  }
}
