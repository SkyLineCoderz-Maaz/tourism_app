import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_button.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/custom_images.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_pic_viewall.dart';

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
            width: Get.width,
            height: Get.height,
            // margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                boxShadow: appBoxShadow,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: Get.height * .23,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/places.png"),
                            fit: BoxFit.cover)),
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
                          height: 60,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Icon(CupertinoIcons.pen,color: appColor,size:40,),
                        ),
                      ],
                    ).paddingOnly(bottom:80),
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MediumText(
                          text: 'Grand Royale',
                          color: Colors.black,
                        ),
                        MediumText(
                          text: 'Park Hotel',
                          color: Colors.black,
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MediumText(
                          text: "\$ 220",
                          color: appColor,
                        ),
                        SmallText(
                          text: "Per Night",
                          color: Colors.black,
                        ),
                      ],
                    ),
                    subtitle: RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: "Location name",
                            children: [
                          TextSpan(text: ""),
                          TextSpan(text: " 2 miles away"),
                        ])).marginSymmetric(vertical: 30),
                  ),
                  Divider(),
                  MediumText(
                    text: 'Summary',
                    color: Colors.black,
                  ).paddingOnly(right: 300),
                  SmallText(
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.',
                    color: Colors.black54,
                  ),
                  Container(
                    height: Get.height * .30,
                    width: Get.width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: appBoxShadow,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            LargeText(
                              text: '4.2',
                              color: appColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MediumText(
                                  text: 'Overall Rating',
                                  color: Colors.black,
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
                                ).paddingOnly(right: 40)
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SmallText(
                              text: 'Place',
                              color: Colors.black,
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
                              color: Colors.black,
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
                              color: Colors.black,
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
                              color: Colors.black,
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
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallText(
                        text: 'Photos',
                        color: Colors.black,
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
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
                          width: 10,
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
                          width: 10,
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
                          width: 10,
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
                    height: 20,
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
                  ),
                  Divider(),
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
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
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
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomImages(
                    name: 'map',
                    width: Get.width,
                  ),
                  CustomButton(
                      width: Get.width * .5,
                      text: 'Book Now',
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
