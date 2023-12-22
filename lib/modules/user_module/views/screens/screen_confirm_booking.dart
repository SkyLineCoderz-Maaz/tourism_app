import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
        child: Column(
          children: [
            Container(
              height: 200,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/places.png'),
                    fit: BoxFit.cover),
              ),
              child: MediumText(
                text: 'Grand Royle Hotel',
                color: Colors.white,
              ).paddingOnly(top:160, right: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MediumText(
                  text: 'Person Name',
                  color: Colors.black,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/person.png'),
                ),
              ],
            ).paddingOnly(top: 20),
            SmallText(
              text: 'abc123@gmail.com',
              color: Colors.grey,
            ).paddingOnly(right: 225, bottom: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Booking From',color: Colors.black,),
                SizedBox(width:70,),
                SmallText(text: '26 Aug, 2021',color: Colors.black,)
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Booking To',color: Colors.black,),
                SizedBox(width:90,),
                SmallText(text: '02 Sep, 2021',color: Colors.black,)
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Number of Rooms',color: Colors.black,),
                SizedBox(width:130,),
                SmallText(text: '1',color: Colors.black,)
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Adults (age 15+)',color: Colors.black,),
                SizedBox(width:150,),
                SmallText(text: '2',color: Colors.black,)
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Children (age 0 to 15)',color: Colors.black,),
                SizedBox(width:120,),
                SmallText(text: '0',color: Colors.black,)
              ],
            ),
            Divider(
              height: 30,
              color: Colors.grey.withOpacity(.4),
            ),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
