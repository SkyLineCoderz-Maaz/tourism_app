import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_home_page.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_forget.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LargeText(
            text: 'Login',
            color: Colors.black,
            textPadding: EdgeInsets.only(right: 230),
          ),
          LargeText(
            text: 'App Logo',
            color: Colors.black,
          ),
          MediumText(
            text: '! Welcome back',
            color: Colors.black54,
          ),
          CustomInputField(
            hint: 'Email',
          ),
          CustomInputField(
            hint: 'Password',
            padding: EdgeInsets.only(top: 20, left: 20),
            isPasswordField: true,
          ),
          GestureDetector(
            onTap: () {
              Get.to(ScreenForget());
            },
            child: MediumText(
              text: '?Forgot Password',
              color: Colors.black,
              textPadding: EdgeInsets.only(
                left: 130,
              ),
            ),
          ),
          CustomButton(
              text: 'Login',
              width: Get.width,
              textFont: 18,
              shadowColor: Colors.black87,
              elevation: 25,
              onPressed: () {
                Get.offAll(ScreenHomePage());
              }),
          SmallText(
            text: 'or',
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                  icon: Icons.facebook,
                  text: 'Facebook',
                  textFont: 16,
                  shadowColor: Colors.black87,
                  elevation: 10,
                  color: Colors.blue,
                  onPressed: () {}),
              CustomButton(
                  icon: Icons.chrome_reader_mode,
                  color: Colors.black,
                  shadowColor: Colors.black87,
                  elevation: 10,
                  textFont: 16,
                  text: 'Google',
                  onPressed: () {}),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: RichText(
                text: new TextSpan(
                    text: 'Don’t have an account |',
                    style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                  new TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pop(context),
                      text: ' Signup',
                      style: TextStyle(color: Color(0xff2FB8A6),fontSize: 15)),
                ])),
          ),
        ],
      ).marginSymmetric(horizontal: 50),
    );
  }
}
