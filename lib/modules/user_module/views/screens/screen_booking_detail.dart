import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_confirm_booking.dart';

import '../../custom_widgets/custom_text_widgets.dart';

class ScreenBookingDetail extends StatelessWidget {
  const ScreenBookingDetail({Key? key}) : super(key: key);

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
              ).paddingOnly(top: 160, right: 200),
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
                SmallText(text: 'Booking From',color: Colors.grey,),
                SizedBox(width: 80,),
                Container(
                  height: 40,
                  width: 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "26 AUG, 2021",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Booking To',color: Colors.grey,),
                SizedBox(width: 100,),
                Container(
                  height: 40,
                  width: 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "02 Sep, 2021",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Number of Rooms',color: Colors.grey,),
                SizedBox(width: 110,),
                Container(
                  height: 40,
                  width: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "1",
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Adults (age 15+)',color: Colors.grey,),
                SizedBox(width:120,),
                Container(
                  height: 40,
                  width: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "2",
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(.4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallText(text: 'Adults (age 15+)',color: Colors.grey,),
                SizedBox(width:120,),
                Container(
                  height: 40,
                  width: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "0",
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(.4),
            ),
            CustomButton(
                width: Get.width * .7,
                text: 'Confirm Booking',
                onPressed: () {
                  Get.to(ScreenConfirmBooking());
                }),
            CustomButton(
                width: Get.width * .7,
                color: Colors.white,
                border: Border.all(color: appColor),
                text: 'Decline',
                textColor: appColor,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: MediumText(
                            text: 'Decline Booking',
                            color: appColor,
                          ),
                          titlePadding: EdgeInsets.only(right: 100),
                          content: Container(
                            width: Get.width,
                            height: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Reason",
                                hintText: "Give us a reason why you are cancel the booking...",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          actions: [
                            CustomButton(
                                text: 'Submit',
                                onPressed: () {
                                  Get.back(result: true);
                                }),
                          ],
                        );
                      });
                }),
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
