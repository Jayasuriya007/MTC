import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';


class TransacSuccessScreen extends StatelessWidget {
  const TransacSuccessScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 239.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 132.adaptSize,
                      width: 132.adaptSize,
                      onTap: () {
                        confirm(context);
                      }),
                  SizedBox(height: 1.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            confirmedticket(context);
                          },
                          child: Text("msg_transaction_success".tr,
                              style: CustomTextStyles.titleLargePrimary_1))),
                  SizedBox(height: 5.v)
                ]))));
  }


  /// Navigates to the cofirmedticketScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cofirmedticketScreen.
  confirm(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.cofirmedticketScreen);
  }


  /// Navigates to the cofirmedticketScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cofirmedticketScreen.
  confirmedticket(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.cofirmedticketScreen);
  }
}
