import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_otp_code.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';
import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenOtp extends StatelessWidget {
  const ScreenOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImages(name: 'otp'),
            Align(
              alignment: Alignment.centerLeft,
              child: MediumText(
                text: 'Verification',
              ),
            ),
            SizedBox(height: 10.sp,),
            Align(
              alignment: Alignment.centerLeft,
              child: SmallText(
                text: 'Enter the OTP code sent to your email',
              ),
            ),
            SizedBox(height: 60.sp,),
            CustomOtpCode(),
            SizedBox(height: 60.sp,),
            SmallText(
              text: 'Did not receive a code?',
              color: Colors.grey,
            ),
            SizedBox(height: 10.sp,),
            CustomButton(
                text: 'RESEND',
                color: Colors.white,
                textColor: appColor,
                onPressed: () {}),
            CustomButton(
                text: 'Done',
                onPressed: () {}),
          ],
        ).marginSymmetric(horizontal:30.sp),
      ),
    );
  }
}
