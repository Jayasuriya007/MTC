import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_outlined_button.dart';
import 'package:pradeep_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CardpaymentScreen extends StatelessWidget {
  CardpaymentScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphonexxs11),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                            left: 34.h, top: 121.v, right: 34.h),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          CustomOutlinedButton(
                              height: 61.v,
                              text: "lbl_card_number".tr,
                              buttonStyle:
                                  CustomButtonStyles.outlinePrimaryTL13,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeBlack90084),
                          SizedBox(height: 43.v),
                          SizedBox(
                              height: 161.v,
                              width: 307.h,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomOutlinedButton(
                                        height: 54.v,
                                        width: 117.h,
                                        text: "lbl_mm_yy".tr,
                                        margin: EdgeInsets.only(left: 11.h),
                                        buttonStyle: CustomButtonStyles
                                            .outlinePrimaryTL26,
                                        buttonTextStyle: CustomTextStyles
                                            .titleLargeBluegray60083,
                                        alignment: Alignment.topLeft),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                            height: 111.v,
                                            width: 307.h,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgRectangle22,
                                                      height: 57.v,
                                                      width: 120.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              22.h),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          right: 8.h)),
                                                  CustomTextFormField(
                                                      width: 307.h,
                                                      controller:
                                                          nameController,
                                                      hintText:
                                                          "msg_card_holder_name"
                                                              .tr,
                                                      hintStyle: CustomTextStyles
                                                          .titleLargePrimary_2,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 30.h,
                                                              vertical: 15.v),
                                                      borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .outlinePrimary,
                                                      fillColor:
                                                          appTheme.teal5004)
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Opacity(
                                            opacity: 0.45,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 11.v, right: 55.h),
                                                child: Text("lbl_cvv".tr,
                                                    style: CustomTextStyles
                                                        .titleLargePrimary_3))))
                                  ])),
                          SizedBox(height: 85.v),
                          CustomOutlinedButton(
                              height: 89.v,
                              text: "lbl_proceed".tr,
                              buttonStyle:
                                  CustomButtonStyles.outlinePrimaryTL44,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargePrimaryContainer,
                              onTap: () {
                                onTapProceed(context);
                              }),
                          SizedBox(height: 5.v)
                        ]))))));
  }

  /// Navigates to the transacSuccessScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the transacSuccessScreen.
  onTapProceed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transacSuccessScreen);
  }
}
