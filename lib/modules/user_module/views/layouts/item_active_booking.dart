import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/custom_widgets/text_styles.dart';
import 'package:tourism_app/modules/user_module/help_us/constants.dart';
import 'package:tourism_app/modules/user_module/models/active_booking.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ItemActiveBooking extends StatelessWidget {
  ActiveBooking active;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: appBoxShadow,
            color: Colors.white
        ),
        child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                height:120,
                width:120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(active.imageUrl)
                    )
                ),

              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      LargeText(text: active.customerName,color: Colors.black,),
                      RichText(text: TextSpan(
                          text: "Booking From : ",style: subtile1,
                          children: [
                            TextSpan(text: active.bookingFrom,style: subtile2)
                          ]
                      )),
                      RichText(

                          text: TextSpan(
                              text: "Booking to       : ",
                              style: subtile1,
                              children: [
                                TextSpan(text: active.bookingTo,style: subtile2)
                              ]
                          ))
                    ]      ).marginOnly(left: 5,top: 5),
              ),
              Text(active.bookingDate).marginOnly(left: 5,top: 10),
            ])

    );
  }

  ItemActiveBooking({
    required this.active,
  });
}