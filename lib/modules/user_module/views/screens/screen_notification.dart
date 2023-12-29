import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';

import '../../custom_widgets/custom_text_widgets.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'Notifications',
          color: Colors.black,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 8.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: appBoxShadow,
                ),
                child: ListTile(
                  title: MediumText(text: 'Review',),
                  subtitle: SmallText(text: 'Alex Jack give you a review',color: Colors.grey,),
                  trailing: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.mail,color: appColor,),),
                )),
            SizedBox(height: 30.sp,),
            Container(
                height: 9.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: appBoxShadow,
                ),
                child: ListTile(
                  title: MediumText(text: 'Booking',),
                  subtitle: SmallText(text: 'You have a new booking from Alex Jack on 07 Dec 2021.',color: Colors.grey,),
                  trailing: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.mail_solid),),
                )),
          ],
        ).paddingSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
