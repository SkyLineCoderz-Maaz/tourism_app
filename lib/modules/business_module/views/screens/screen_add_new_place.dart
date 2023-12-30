import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenAddNewPlace extends StatelessWidget {
  String selectedDuration = 'Per Night';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: MediumText(
          text: 'Add New Place',
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
              height: Get.height * .2,
              width: Get.width * .9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black38)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/photo (2) 1.png'),
                  SizedBox(height: 1.h,),
                  MediumText(
                    text: 'Add Images',
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Align(
              alignment: Alignment.topLeft,
              child: MediumText(
                text: 'Add Details',
                color: appColor,
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              height:6.h,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Location Name",
                  hintText: "Grand Royale Hotel",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Get.width * .3,
                  height: 8.h,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Price",
                      hintText: "\$200",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: Get.width * 0.3,
                  height: 8.h,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            labelText: "Duration",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          value: selectedDuration,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              selectedDuration = newValue;
                              print('Selected Duration: $selectedDuration');
                            }
                          },
                          items: <String>['Per Night', 'Per Week', 'Per Month']
                              .map<DropdownMenuItem<String>>(
                                (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.h,),
            Container(
              height: 6.h,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Available Rooms",
                  hintText: "Total Rooms",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              height: 13.h,
              child: TextField(
                maxLines: 300,
                decoration: InputDecoration(
                  labelText: "Summary",
                  hintText: "text here...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            CustomButton(
              width: Get.width * .6,
              color: appColor,
              text: 'Upload',
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 40.sp,
                              color: appColor,
                            ),
                            MediumText(
                              text: "Uploaded Successfully",
                              color: appColor,
                              // fontWeight: FontWeight.w400,
                            )
                          ],
                        ),
                      );
                    });
              },
              shadowColor: Colors.black,
              elevation: 0,
              textFont: 16,
            ),
          ],
        ).paddingSymmetric(horizontal: 20.sp, vertical: 30.sp),
      ),
    );
  }
}
