import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_icon_button.dart';
import 'package:pradeep_s_application6/widgets/custom_outlined_button.dart';

class NetbankingScreen extends StatelessWidget {
  const NetbankingScreen({Key? key}) : super(key: key);

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
                        begin: Alignment(0, 0),
                        end: Alignment(0, 0),
                        colors: [
                      appTheme.greenA20001,
                      theme.colorScheme.errorContainer
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 33.h, vertical: 29.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomIconButton(
                              height: 67.v,
                              width: 308.h,
                              padding: EdgeInsets.all(9.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup15)),
                          SizedBox(height: 43.v),
                          SizedBox(
                              height: 88.v,
                              width: 308.h,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 73.v,
                                            width: 308.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.teal10001,
                                                borderRadius:
                                                    BorderRadius.circular(27.h),
                                                border: Border.all(
                                                    color: theme
                                                        .colorScheme.primary,
                                                    width: 1.h)))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage19,
                                        height: 88.v,
                                        width: 158.h,
                                        radius: BorderRadius.circular(44.h),
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 66.h))
                                  ])),
                          SizedBox(height: 45.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 98.h, vertical: 7.v),
                              decoration: AppDecoration.outlinePrimary5
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder26),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage24,
                                        height: 63.v,
                                        width: 112.h,
                                        radius: BorderRadius.circular(31.h))
                                  ])),
                          SizedBox(height: 57.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 74.h, vertical: 19.v),
                              decoration: AppDecoration.outlinePrimary5
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder26),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 4.v),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage26,
                                        height: 37.v,
                                        width: 159.h)
                                  ])),
                          Spacer(),
                          CustomOutlinedButton(
                              height: 74.v,
                              text: "lbl_submit".tr,
                              margin: EdgeInsets.only(
                                  left: 34.h, right: 18.h, bottom: 80.v),
                              buttonStyle:
                                  CustomButtonStyles.outlinePrimaryTL29,
                              onTap: () {
                                onTapSubmit(context);
                              })
                        ])))));
  }

  /// Navigates to the cofirmedticketScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cofirmedticketScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cofirmedticketScreen);
  }
}
