import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_elevated_button.dart';

class MainbookscreenScreen extends StatelessWidget {
  const MainbookscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFDB5687),
                Color(0xFF6E1435),
                Color(0xFFE53939),
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 35.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 10.v),
                  child: Text(
                    "Main Booking Screen",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(24.h, 23.v, 12.h, 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 134.v),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFDE0B0B), Color(0xFF808080)],
                      ),
                      borderRadius: BorderRadius.circular(44.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            height: 116.v,
                            width: 129.h,
                            text: "lbl_show_ticket".tr,
                            margin: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 24.v),
                            buttonStyle: CustomButtonStyles.fillPink,
                            buttonTextStyle: CustomTextStyles.titleLargeDeeppurple50,
                            onTap: () {
                              onTapShowticket(context);
                            },
                          ),
                        ),
                        SizedBox(width: 5.h), // Add spacing between buttons
                        Expanded(
                          child: CustomElevatedButton(
                            height: 116.v,
                            width: 113.h, // Adjusted width
                            text: "Book Ticket".tr,
                            margin: EdgeInsets.only(left: 5.h, top: 3.v, bottom: 24.v),
                            buttonStyle: CustomButtonStyles.fillLightBlueEa,
                            buttonTextStyle: CustomTextStyles.titleLargeDeeppurple50,
                            onTap: () {
                              onTapBookticket(context);
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                Container(
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border(
                      left: BorderSide(color: Colors.black, width: 37.0),
                      right: BorderSide(color: Colors.black, width: 15.0),
                      top: BorderSide(color: Colors.black, width: 13.0),
                      bottom: BorderSide(color: Colors.black, width: 17.0),
                    ),
                  ),
                  child: Text(
                    "MTC",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapImgArrowoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.regisScreen);
  }

  onTapShowticket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cofirmedticketScreen);
  }

  onTapBookticket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sourcedestinationScreen);
  }
}
