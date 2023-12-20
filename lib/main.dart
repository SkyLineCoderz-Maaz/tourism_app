import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_add_new_place.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_booking_detail.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_overview.dart';
import 'package:tourism_app/modules/user_module/views/screens/screen_splash.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenSplash(),
        // home: ScreenBookingDetail(),
      );
    },);
  }
}
