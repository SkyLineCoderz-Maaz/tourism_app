import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_container.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_help.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_my_account.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_my_rating.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_setting.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class LayoutProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CustomImages(
                name: 'profile_background',
                width: Get.width,
              ),
              LargeText(
                text: 'App Logo',
                color: Colors.black,
              ),

              Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ).paddingOnly(left: 350, top: 50),
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images/person.png'),
              ).paddingOnly(top: 205, left: 20),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              CustomContainer(
                height: 70,
                color: Colors.white,
                icon: Icons.person_pin,
                iconColor: appColor,
                text: 'My Account',
                textColor: Colors.black,
                suffixIcon: CupertinoIcons.forward,
                onPressed: () {
                  Get.to(ScreenMyAccount());
                },
              ),
              SizedBox(
                height: 40,
              ),
              CustomContainer(
                height: 70,
                color: Colors.white,
                icon: Icons.settings,
                iconColor: appColor,
                text: 'Settings',
                textColor: Colors.black,
                suffixIcon: CupertinoIcons.forward,
                onPressed: () {
                  Get.to(ScreenSetting());
                },
              ),
              SizedBox(
                height: 40,
              ),
              CustomContainer(
                height: 70,
                color: Colors.white,
                icon: Icons.image_aspect_ratio_outlined,
                iconColor: appColor,
                text: 'My Rating',
                textColor: Colors.black,
                suffixIcon: CupertinoIcons.forward,
                onPressed: () {
                  Get.to(ScreenMyRating());
                },
              ),
              SizedBox(
                height: 40,
              ),
              CustomContainer(
                height: 70,
                color: Colors.white,
                icon: Icons.question_mark_outlined,
                iconColor: appColor,
                text: 'Help',
                textColor: Colors.black,
                suffixIcon: CupertinoIcons.forward,
                onPressed: () {
                  Get.to(ScreenHelp());
                },
              ),
            ],
          ).paddingSymmetric(horizontal: 30),
        ],
      ),
    );
  }
}
