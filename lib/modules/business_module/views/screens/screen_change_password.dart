import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_images.dart';


import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenChangePassword extends StatelessWidget {
  const ScreenChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'Change Password',
          color: Colors.black,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back(result: true);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: CustomImages(name: 'password')).marginSymmetric(vertical: 20.sp),
            Container(
              height: 6.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Old Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(14.sp)),
              ),
            ).marginSymmetric(vertical: 20.sp),
            Container(
              height: 6.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'New Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(14.sp)),
              ),
            ).marginSymmetric(vertical: 20.sp),
            Container(
              height: 6.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(14.sp)),
              ),
            ).marginSymmetric(vertical: 20.sp),
            CustomButton(
                    width: Get.width * .5,
                    text: 'Change Password',
                    onPressed: () {}).marginSymmetric(vertical: 20.sp),
          ],
        ).paddingSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
