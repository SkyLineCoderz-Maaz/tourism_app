import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';

import '../../custom_widgets/custom_text_widgets.dart';

class ScreenHelp extends StatelessWidget {
  const ScreenHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'Help',
          color: Colors.black,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: appBoxShadow,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MediumText(
                      text: 'Enter Details',
                      color: Colors.black,
                    ),
                    Container(
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Your Name',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.sp)),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Your Email',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.sp)),
                      ),
                    ),
                    Container(
                      height: Get.height * .2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Description',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(14.sp)),
                      ),
                    ),
                    CustomButton(
                        width: Get.width * .5, text: 'Send', onPressed: () {}),
                  ],
                ).paddingSymmetric(horizontal: 10.sp),
              ),
              Column(
                children: [
                  SizedBox(height:4.h,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: MediumText(
                      text: 'We Are Available On',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height:1.h,),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.globe,
                        color: appColor,
                        size: 18.sp,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: SmallText(
                            text: 'www.Tourism.com',
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.mail,
                        color: Colors.red,
                        size: 18.sp,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: SmallText(
                            text: 'tourism07@gmail.com',
                            color: Colors.black,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.phone_circle_fill,
                        color: appColor,
                        size: 22.sp,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: SmallText(
                            text: '+1-98765433456',
                            color: Colors.black,
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: 10.sp),
        ),
      ),
    );
  }
}
