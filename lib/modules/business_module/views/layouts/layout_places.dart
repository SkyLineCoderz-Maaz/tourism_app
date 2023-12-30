import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/business_module/custom_widgets/Custom_text_widgets.dart';
import 'package:tourism_app/modules/business_module/helpers/constants.dart';
import 'package:tourism_app/modules/business_module/views/layouts/item_places.dart';
import 'package:tourism_app/modules/business_module/views/screens/screen_place_category.dart';

class LayoutPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LargeText(text: 'My Places',),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: appColor,)),
        ],
      ),
      floatingActionButton:FloatingActionButton(
          onPressed: (){
            Get.to(ScreenPlaceCategory());
          },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: appColor,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return ItemPlaces();
        },),
    );
  }
}
