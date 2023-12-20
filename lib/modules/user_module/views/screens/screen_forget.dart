import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_otp.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenForget extends StatelessWidget {
  const ScreenForget({super.key});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20,
          ),
          LargeText(
            text: 'Forgot Password',
            color: Colors.black,
            // textPadding: EdgeInsets.only(right: 80),
          ),
          SizedBox(
            height: 10,
          ),
          SmallText(
            text: 'Enter your email to recover your password. ',
            color: Colors.black,
            // textPadding: EdgeInsets.only(right: 15),
          ),
          SizedBox(
            height: 100,
          ),
          CustomInputField(
            hint: 'Email',
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              text: 'send',
              width: Get.width,
              textFont: 18,
              shadowColor: Colors.black87,
              elevation: 15,
              onPressed: () {
                Get.to(ScreenOtp());
              }),
        ],
      ).marginSymmetric(horizontal: 40),
    );
  }
}
