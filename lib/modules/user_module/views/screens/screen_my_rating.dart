import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenMyRating extends StatelessWidget {
  const ScreenMyRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'My Ratings',
          color: Colors.black,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: appBoxShadow,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.sp,
                      ),
                      CircleAvatar(
                        radius: 25.sp,
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      SizedBox(
                        width: 20.sp,
                      ),
                      Column(
                        children: [
                          MediumText(
                            text: 'Name',
                            color: Colors.black,
                          ).marginOnly(right: 60.sp),
                          SmallText(
                            text: 'Review description',
                            color: Colors.grey,
                          ).marginOnly(right: 7.sp),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              size: 5,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ).paddingOnly(right: 50),
                        ],
                      ),
                    ],
                  ),
                ).paddingSymmetric(horizontal: 20),
                Divider(
                  height: 20.sp,
                  color: Colors.transparent,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
