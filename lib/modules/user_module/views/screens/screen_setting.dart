import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_container.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_change_password.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_notification.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenSetting extends StatefulWidget {
  @override
  State<ScreenSetting> createState() => _ScreenSettingState();
}

class _ScreenSettingState extends State<ScreenSetting> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'Settings',
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
      body: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.bell,
                    color: appColor,
                  )).marginSymmetric(horizontal: 10.sp),
              TextButton(
                  onPressed: () {
                    Get.to(ScreenNotification());
                  },
                  child: MediumText(
                    text: 'Notification',
                  )),
              SizedBox(width: 30.w,),
              Switch(
                value: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = value;
                  });
                },
                activeTrackColor: Colors.green,
                activeColor: Colors.white,
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.lock,
                    color: appColor,
                  )).marginSymmetric(horizontal: 10.sp),
              TextButton(
                  onPressed: () {
                    Get.to(ScreenChangePassword());
                  },
                  child: MediumText(
                    text: 'Change Password',
                  )),
            ],
          ),
          Divider(),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.book,
                    color: appColor,
                  )).marginSymmetric(horizontal: 10.sp),
              TextButton(
                  onPressed: () {},
                  child: MediumText(
                    text: 'Terms and Conditions',
                  )),
            ],
          ),
          Divider(),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.login_outlined,
                    color: appColor,
                  )).marginSymmetric(horizontal: 10.sp),
              TextButton(
                  onPressed: () {},
                  child: MediumText(
                    text: 'Logout',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
