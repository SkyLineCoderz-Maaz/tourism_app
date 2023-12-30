import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_container.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_help.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_my_account.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_my_rating.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_setting.dart';

import '../../custom_widgets/custom_text_widgets.dart';

class LayoutProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CustomImages(
                  name: 'profile_background',
                  width: Get.width,
                ),
                ExtraLargeText(
                  text: 'App Logo',
                ).paddingOnly(top:90.sp,left: 120.sp),
                Image.asset('assets/icons/bell.png',).paddingOnly(top: 40.sp,left: 260.sp),
                CircleAvatar(
                  radius: 35.sp,
                  backgroundImage: AssetImage('assets/images/person.png'),
                ).paddingOnly(top: 150.sp, left: 15.sp),
              ],
            ),
            SizedBox(
              height: 40.sp,
            ),
            Column(
              children: [
                CustomContainer(
                  height: 50.sp,
                  color: Colors.white,
                  icon: Icons.person_pin,
                  iconColor: appColor,
                  text: 'My Account',
                  textColor: Colors.black,
                  suffixIcon: CupertinoIcons.forward,
                  onPressed: () {
                    Get.to(ScreenMyAccount());
                  },
                ).marginSymmetric(vertical: 15.sp),
                CustomContainer(
                  height: 50.sp,
                  color: Colors.white,
                  icon: Icons.settings,
                  iconColor: appColor,
                  text: 'Settings',
                  textColor: Colors.black,
                  suffixIcon: CupertinoIcons.forward,
                  onPressed: () {
                    Get.to(ScreenSetting());
                  },
                ).marginSymmetric(vertical: 15.sp),
                CustomContainer(
                  height: 50.sp,
                  color: Colors.white,
                  icon: Icons.image_aspect_ratio_outlined,
                  iconColor: appColor,
                  text: 'My Rating',
                  textColor: Colors.black,
                  suffixIcon: CupertinoIcons.forward,
                  onPressed: () {
                    Get.to(ScreenMyRating());
                  },
                ).marginSymmetric(vertical: 15.sp),
                CustomContainer(
                  height: 50.sp,
                  color: Colors.white,
                  icon: Icons.question_mark_rounded,
                  iconColor: appColor,
                  text: 'Help',
                  textColor: Colors.black,
                  suffixIcon: CupertinoIcons.forward,
                  onPressed: () {
                    Get.to(ScreenHelp());
                  },
                ).marginSymmetric(vertical: 15.sp),
              ],
            ).paddingSymmetric(horizontal: 20.sp),
          ],
        ),
      ),
    );
  }
}
