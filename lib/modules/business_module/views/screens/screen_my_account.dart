import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenMyAccount extends StatelessWidget {
  const ScreenMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'My Account',
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
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 35.sp,
                    backgroundImage:AssetImage("assets/images/person.png"),
                  ),
                  Container(
                    height: 15.h,
                    width: 8.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent
                    ),
                    child: Icon(Icons.camera_alt,color: Colors.white,),
                  ).paddingOnly(left: 50.sp,),
                ],
              ).paddingOnly(top: 40.sp),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Name',color: Colors.grey,).marginSymmetric(horizontal: 20.sp),
                  SmallText(text: 'Edit',color: appColor,).marginOnly(right: 20.sp),
                ],
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Muaz',
                  contentPadding: EdgeInsets.only(left: 20.sp)
                ),
              ),
              SizedBox(height: 5.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Email',color: Colors.grey,).marginSymmetric(horizontal: 20.sp),
                  SmallText(text: 'Edit',color: appColor,).marginOnly(right: 20.sp),
                ],
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'abc123@gmail.com',
                    contentPadding: EdgeInsets.only(left: 20.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
