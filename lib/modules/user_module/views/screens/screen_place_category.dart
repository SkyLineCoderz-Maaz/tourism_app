import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';
import 'package:tourism_app/modules/user_module/models/select_places_category.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_add_new_place.dart';
class ScreenPlaceCategory extends StatelessWidget {
  SelectPlacesCategory places;
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
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(places.imgUrl),
                    ),
                  ),
                ),
                MediumText(
                  text: places.placesName,
                  color: Colors.black,
                ),
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
    );
  }

  ScreenPlaceCategory({
    required this.places,
  });
}
