import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_icon_button.dart';
import 'package:pradeep_s_application6/widgets/custom_outlined_button.dart';

class GpaypaytmwalletScreen extends StatelessWidget {
  const GpaypaytmwalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 48.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF590E2A),
                Color(0xFFDB5687),
                Color(0xFF6E1435),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Column(
            children: [
              Divider(indent: 22.h, endIndent: 21.h),
              SizedBox(height: 97.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    height: 72.v,
                    width: 107.h,
                    margin: EdgeInsets.only(top: 9.v, bottom: 4.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage21,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage20,
                    height: 85.adaptSize,
                    width: 85.adaptSize,
                    radius: BorderRadius.circular(42.h),
                    margin: EdgeInsets.only(left: 43.h),
                  ),
                ],
              ),
              SizedBox(height: 54.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage22,
                height: 80.v,
                width: 121.h,
                radius: BorderRadius.circular(40.h),
              ),
              Padding(
                padding: EdgeInsets.only(top: 39.v),
                child: Divider(indent: 6.h),
              ),
              SizedBox(
                height: 73.v,
                width: 168.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 73.v,
                        width: 168.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(56.h),
                          border: Border.all(
                            color: appTheme.whiteA700,
                            width: 2.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage11,
                      height: 32.v,
                      width: 46.h,
                      radius: BorderRadius.circular(31.h),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomOutlinedButton(
                text: "lbl_submit".tr,
                margin: EdgeInsets.symmetric(horizontal: 30.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryRed,
                buttonTextStyle: CustomTextStyles.titleLargeGray50,
                onTap: () {
                  onTapSubmit(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 68.v),
                child: Divider(indent: 22.h, endIndent: 20.h),
              ),
            ],
          ),
        ),
      ),
    );
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
