import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_add_new_place.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenPlaceCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: 'Select Category',
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
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: appBoxShadow,
                borderRadius: BorderRadius.all(Radius.circular(3.sp)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/places.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.sp))),
                  ).marginOnly(left: 10.sp),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      child: MediumText(
                        text: 'Hotels & Restaurants',
                      )),
                  IconButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: appColor,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: appBoxShadow,
                borderRadius: BorderRadius.all(Radius.circular(3.sp)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/places.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.sp))),
                  ).marginOnly(left: 10.sp),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      child: MediumText(
                        text: 'Gym & Exercise',
                      )),
                  IconButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: appColor,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: appBoxShadow,
                borderRadius: BorderRadius.all(Radius.circular(3.sp)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/places.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.sp))),
                  ).marginOnly(left: 10.sp),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      child: MediumText(
                        text: 'Hiking trails & Reviers',
                      )),
                  IconButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: appColor,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: appBoxShadow,
                borderRadius: BorderRadius.all(Radius.circular(3.sp)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/places.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.sp))),
                  ).marginOnly(left: 10.sp),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      child: MediumText(
                        text: 'Outdoor Activities',
                      )),
                  IconButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: appColor,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: appBoxShadow,
                borderRadius: BorderRadius.all(Radius.circular(3.sp)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 8.h,
                    width: 22.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/places.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.sp))),
                  ).marginOnly(left: 10.sp),
                  TextButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      child: MediumText(
                        text: 'Indoor Activities',
                      )),
                  IconButton(
                      onPressed: () {
                        Get.to(ScreenAddNewPlace());
                      },
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: appColor,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
