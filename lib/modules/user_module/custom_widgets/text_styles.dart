// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:tourism_app/responsive.dart';
//
//
//
// class LargeText extends StatelessWidget {
//   String text;
//   double? font;
//   FontWeight? fontWeight;
//   EdgeInsetsGeometry? textPadding;
//   Color? color;// New parameter for custom text color
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     Brightness brightness = MediaQuery.of(context).platformBrightness;
//     Color textColor =
//         color ?? (brightness == Brightness.light ? Colors.black : Colors.white);
//
//     return Padding(
//       padding: textPadding ?? EdgeInsets.zero,
//       child: Text(
//         text,
//         textDirection: TextDirection.rtl,
//         style: TextStyle(
//           fontFamily: 'Rufina',
//           fontWeight: FontWeight.w700,
//           fontSize: Responsive.isSmallScreen(context) ? font ?? width / 11 : width / 50,
//           color: textColor,
//         ),
//       ),
//     );
//   }
//
//   LargeText({
//     required this.text,
//     this.font,
//     this.fontWeight,
//     this.textPadding,
//     this.color, // New parameter for custom text color
//   });
// }
//
// class MediumText extends StatelessWidget {
//   String text;
//   double? font;
//   FontWeight? fontWeight;
//   Color? color;
//   EdgeInsetsGeometry? textPadding;
//
//   MediumText({
//     required this.text,
//     this.font,
//     this.fontWeight,
//     this.color,
//     this.textPadding,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     Brightness brightness = MediaQuery.of(context).platformBrightness;
//     Color textColor =
//         color ?? (brightness == Brightness.light ? Colors.black : Colors.white);
//
//     return Padding(
//       padding: textPadding ?? EdgeInsets.zero,
//       child: Text(
//         text,
//         textDirection: TextDirection.rtl,
//         style: TextStyle(
//           fontFamily: 'Segoe UI',
//           fontWeight: FontWeight.w300,
//           fontSize: 11.sp,
//           color: textColor,
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class SmallText extends StatelessWidget {
//   String text;
//   double? font;
//   FontWeight? fontWeight;
//   EdgeInsetsGeometry? textPadding;
//   Color? color; // New parameter for custom text color
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     Brightness brightness = MediaQuery.of(context).platformBrightness;
//     Color textColor =
//         color ?? (brightness == Brightness.light ? Colors.black : Colors.white);
//
//     return Padding(
//       padding: textPadding ?? EdgeInsets.zero,
//       child: Text(
//         text,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontFamily: 'Segoe UI',
//           fontWeight: FontWeight.w400,
//           fontSize: Responsive.isSmallScreen(context) ? font ?? width / 22 : width / 60,
//           color: textColor,
//         ),
//       ),
//     );
//   }
//
//   SmallText({
//     required this.text,
//     this.fontWeight,
//     this.font,
//     this.textPadding,
//     this.color, // New parameter for custom text color
//   });
// }
