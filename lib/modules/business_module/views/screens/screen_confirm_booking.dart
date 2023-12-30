import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenConfirmBooking extends StatelessWidget {
  const ScreenConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: MediumText(
          text: 'Booking Detail',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 20.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/places.png'),
                      fit: BoxFit.cover),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: MediumText(
                    text: 'Grand Royle Hotel',
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: MediumText(text: 'Person Name',),
                subtitle: SmallText(text: 'abc123@gmail.com',color: Colors.grey,),
                trailing:CircleAvatar(
          
                  backgroundImage: AssetImage('assets/images/person.png'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Booking From',),
                  SmallText(text: '26 AUG, 2021'),
                ],
              ),
              Divider(
                height: 4.h,
                color: Colors.grey.withOpacity(.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Booking To',),
                  SmallText(text: '02 Sep, 2021'),
                ],
              ),
              Divider(
                height: 4.h,
                color: Colors.grey.withOpacity(.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Number of Rooms',),
                  SmallText(text: '1'),
                ],
              ),
              Divider(
                height: 4.h,
                color: Colors.grey.withOpacity(.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Adults (age 15+)',),
                  SmallText(text: '2'),
                ],
              ),
              Divider(
                height: 4.h,
                color: Colors.grey.withOpacity(.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Adults (age 15+)',),
                  SmallText(text: '0'),
                ],
              ),
              Divider(
                height: 4.h,
                color: Colors.grey.withOpacity(.4),
              ),
            ],
          ).marginSymmetric(horizontal: 10.sp),
        ),
      ),
    );
  }
}
