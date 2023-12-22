import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tourism_app/modules/user_module/helpers/constants.dart';

import '../../custom_widgets/Custom_text_widgets.dart';

class ScreenMyAccount extends StatelessWidget {
  const ScreenMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MediumText(
          text: 'My Account',
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 1,
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
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:AssetImage("assets/images/person.png"),
                ),
                Container(
                  height: 140,
                  width: 33,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent
                  ),
                  child: Icon(Icons.camera_alt,color: Colors.white,),
                ).paddingOnly(left: 75,top: 5),
              ],
            ).paddingOnly(top: 50),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallText(text: 'Name',color: Colors.grey,),
                SizedBox(width: 155,),
                SmallText(text: 'Edit',color: appColor,),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.name,

              decoration: InputDecoration(
                hintText: 'Muaz',
                contentPadding: EdgeInsets.only(left: 30)
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallText(text: 'Email',color: Colors.grey,),
                SizedBox(width: 155,),
                SmallText(text: 'Edit',color: appColor,),
              ],
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'abc123@gmail.com',
                  contentPadding: EdgeInsets.only(left: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
