import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/Custom_text_widgets.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';

class ItemPlaces extends StatelessWidget {
  const ItemPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: appBoxShadow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              height: Get.height * .15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage("assets/images/places.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title:MediumText(text: 'Grand Royle Hotel',),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SmallText(text:"\$ 220",color: appColor,),
                  SmallText(text:"per night",color: Colors.grey,),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmallText(text:"Location Name",color: Colors.grey,),
                  RatingBar.builder(
                    initialRating: 3,
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
                ],
              ),
            ),
          ],
        ),
      );
  }
}
