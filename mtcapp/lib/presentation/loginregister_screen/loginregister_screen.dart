import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_elevated_button.dart';

class LoginregisterScreen extends StatelessWidget {
  const LoginregisterScreen({Key? key}) : super(key: key);

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
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFEC0909), // Replace with your color code
                          Color(0xFFEC0909),])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: SizedBox(
                            height: mediaQueryData.size.height,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgMtcdeluxeac1,
                                      height: 529.v,
                                      width: 388.h,
                                radius: BorderRadius.only(
                                    topLeft: Radius.circular(14),
                                    topRight: Radius.circular(14),
                                    bottomLeft: Radius.circular(45),
                                    bottomRight: Radius.circular(45),
                                ),
                                      alignment: Alignment.topCenter),
                                  Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 79.v),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFEC0909), Color(0xFF000000)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(63),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                      ),
                      // Your child widgets go here...




                child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomElevatedButton(
                                                    text: "lbl_login".tr,
                                                    onTap: () {
                                                      onTapLogin(context);
                                                    }),
                                                SizedBox(height: 40.v),
                                                CustomElevatedButton(
                                                    text: "lbl_register".tr,
                                                    buttonStyle:
                                                        CustomButtonStyles
                                                            .fillLightBlueEa, //fillLightBlueEa
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .titleLargeGray10001,//titleLargeGray10001
                                                    onTap: () {
                                                      onTapRegister(context);
                                                    }),
                                                SizedBox(height: 40.v)
                                              ])))
                                ])))))));
  }

  /// Navigates to the regisScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the regisScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the regisScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the regisScreen.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.regisScreen);
  }
}
