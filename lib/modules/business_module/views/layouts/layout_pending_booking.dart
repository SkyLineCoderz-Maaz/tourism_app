import 'package:flutter/material.dart';
import 'package:tourism_app/modules/business_module/models/pending_booking.dart';
import 'package:tourism_app/modules/business_module/views/layouts/item_pending_booking.dart';
class LayoutPendingBooking extends StatelessWidget {
  const LayoutPendingBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pendingList.length,
      itemBuilder: (BuildContext context, int index) {
        var pending=pendingList[index];

        return ItemPendingBooking( pending: pending,);
      },);
  }
}
