import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_confirm_booking.dart';

import '../../custom_widgets/custom_text_widgets.dart';

class ScreenBookingDetail extends StatelessWidget {
  const ScreenBookingDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: SafeArea(
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
                  SmallText(text: 'Booking From',color: Colors.grey,),
                  Container(
                    height: 5.h,
                    width: 25.w,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Booking To',color: Colors.grey,),
                  Container(
                    height: 5.h,
                    width: 25.w,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Number of Rooms',color: Colors.grey,),
                  Container(
                    height: 5.h,
                    width: 25.w,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Adults (age 15+)',color: Colors.grey,),
                  Container(
                    height: 5.h,
                    width: 25.w,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallText(text: 'Adults (age 15+)',color: Colors.grey,),
                  Container(
                    height: 5.h,
                    width: 25.w,
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
                            title: Center(
                              child: MediumText(
                                text: 'Decline Booking',
                                color: appColor,
                              ),
                            ),
                            content: Container(
                              height: 15.h,
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
          ).marginSymmetric(horizontal: 10.sp),
        ),
      ),
    );
  }
}
