import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';

class ScreenSignup extends StatelessWidget {
  const ScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LargeText(text: 'Signup',color: Colors.black,textPadding: EdgeInsets.only(right: 200),),
          LargeText(
            text: 'App Logo',
            color: Colors.black,
          ),
          MediumText(
            text: '!Let’s Get It Started',
            color: Colors.black54,
          ),
          CustomInputField(
            hint: 'First Name',
          ),
          CustomInputField(
            hint: 'Last Name',
          ),
          CustomInputField(
            hint: 'Email',
          ),
          CustomInputField(
            hint: 'Password',
            padding: EdgeInsets.only(top: 20, left: 20),
            isPasswordField: true,
          ),
          CustomButton(text: 'Signup', width: Get.width, onPressed: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                  icon: Icons.facebook,
                  text: 'Facebook',
                  textFont: 16,
                  color: Colors.blue,
                  onPressed: () {}),
              CustomButton(
                  icon: Icons.chrome_reader_mode,
                  color: Colors.black,
                  textFont: 16,
                  text: 'Google',
                  onPressed: () {}),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100),
            child: RichText(
                text: new TextSpan(
                    text: 'Already have an account  |',
                    style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      new TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pop(context),
                          text: ' Login',
                          style: TextStyle(color:appColor,fontSize: 15)),
                    ])),
          ),
        ],
      ).marginSymmetric(horizontal: 50),
    );
  }
}
