import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_input_field.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_otp.dart';

import '../../custom_widgets/custom_text_widgets.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ExtraLargeText(
                text: 'Forgot Password',
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SmallText(
                text: 'Enter your email to recover your password. ',
              ),
            ),
            SizedBox(
              height: 70.sp,
            ),
            CustomInputField(
              hint: 'Email',
            ),
            SizedBox(
              height: 20.sp,
            ),
            CustomButton(
                text: 'send',
                onPressed: () {
                  Get.to(ScreenOtp());
                }),
          ],
        ).marginSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
