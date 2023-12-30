import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_pic_viewall.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenOverview extends StatefulWidget {
  @override
  State<ScreenOverview> createState() => _ScreenOverviewState();
}

class _ScreenOverviewState extends State<ScreenOverview> {
  double _currentSliderValue = 0;
  double currentSliderValue = 0;
  double sliderValue = 0;
  double values = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                boxShadow: appBoxShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: Get.height * .23,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/places.png"),
                            fit: BoxFit.cover)),
                    child: SafeArea(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Get.back(result: true);
                              },
                              icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                            ),
                            Container(
                              height: 6.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Icon(CupertinoIcons.pen,color: appColor,size:40,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumText(text: 'Grand Royale\nPark Hotel'),
                          Column(
                            children: [
                              MediumText(text: "\$220",color: appColor,),
                              SmallText(text: 'Per Night'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SmallText(text: 'Location Name'),
                          Icon(CupertinoIcons.location_solid,size: 12.sp,color: appColor,),
                          Text('2 miles away'),
                        ],
                      ),
                    ],
                  ).marginSymmetric(horizontal: 10.sp),
                  Divider(color:Colors.grey.withOpacity(.3),),
                  Align(
                    alignment: Alignment.topLeft,
                    child: MediumText(
                      text: 'Summary',
                    ),
                  ).marginSymmetric(horizontal: 10.sp),
                  SizedBox(
                    height: 2.sp,
                  ),
                  SmallText(
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.',
                  ).marginOnly(left: 10.sp),
                  SizedBox(height: 15.sp,),
                  Container(
                    height: Get.height * .35,
                    width: Get.width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: appBoxShadow,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Row(
                            children: [
                              ExtraLargeText(text: '4.2',color: appColor,),
                              SizedBox(width: 10.sp,),
                              Column(
                                children: [
                                  MediumText(
                                    text: 'Overall Rating'
                                  ),
                                  RatingBar.builder(
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 5,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ).paddingOnly(right: 30.sp)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Place',
                            ),
                            Slider(
                              value: _currentSliderValue,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Service',
                            ),
                            Slider(
                              value: currentSliderValue,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  currentSliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'price',
                            ),
                            Slider(
                              value: sliderValue,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: sliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  sliderValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Quality',
                            ),
                            Slider(
                              value: values,
                              max: 20,
                              divisions: 10,
                              activeColor: appColor,
                              inactiveColor: Colors.grey.withOpacity(.3),
                              thumbColor: Colors.black,
                              label: values.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  values = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ).marginSymmetric(vertical: 10.sp),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: 'Photos',
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(ScreenViewAll());
                        },
                        child: SmallText(
                          text: 'View all',
                          color: appColor,
                        ),
                      ),
                    ],
                  ).marginSymmetric(horizontal: 10.sp),
                  SizedBox(
                    height: 15.sp,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.sp,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage('assets/images/places.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: 'Reviews',
                        color: Colors.black,
                      ),
                      SmallText(
                        text: 'View all',
                        color: appColor,
                      ),
                    ],
                  ).marginSymmetric(horizontal: 10.sp),
                  Divider(color: Colors.grey.withOpacity(.3),),
                  ListTile(
                    leading: Image.asset('assets/images/person.png'),
                    title: MediumText(
                      text: 'Alex Jack',
                      color: Colors.black,
                    ).paddingOnly(right: 100),
                    subtitle: SmallText(
                      text: '21 June, 2021 02:05 PM',
                      color: Colors.grey,
                    ),
                    trailing: RatingBar.builder(
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
                    ),
                  ),
                  SmallText(
                    text:
                        'Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature',
                  ).marginOnly(left: 10.sp),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Divider(color: Colors.grey.withOpacity(.3),),
                  ListTile(
                    leading: Image.asset('assets/images/person.png'),
                    title: MediumText(
                      text: 'Alex Jack',
                      color: Colors.black,
                    ).paddingOnly(right: 100),
                    subtitle: SmallText(
                      text: '21 June, 2021 02:05 PM',
                      color: Colors.grey,
                    ),
                    trailing: RatingBar.builder(
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
                    ),
                  ),
                  SmallText(
                    text:
                        'Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature',
                  ).marginOnly(left: 10.sp),
                  SizedBox(
                    height: 15.sp,
                  ),
                  CustomImages(
                    name: 'map',
                    width: Get.width,
                  ),
                  CustomButton(
                      text: 'Book Now',
                      onPressed: () {}).marginSymmetric(horizontal: 30.sp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
