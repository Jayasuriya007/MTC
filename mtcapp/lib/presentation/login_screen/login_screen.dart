import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Add this line
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_outlined_button.dart';
import 'package:pradeep_s_application6/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailidoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFDB5687),
                Color(0xFF6E1435),
                Color(0xFF590E2A),
              ],
            ),
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 46.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgArrow1,
                    height: 5.v,
                    width: 6.h,
                    onTap: () {
                      onTapImgArrowoneone(context);
                    },
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(26.h, 65.v, 26.h, 5.v),
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 53.v),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFCF2FA4), Color(0xFF465268)],
                        ),
                        borderRadius: BorderRadius.circular(68.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgCar,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                          ),
                          CustomTextFormField(
                            controller: emailidoneController,
                            margin: EdgeInsets.only(
                                left: 7.h, top: 53.v, right: 7.h),
                            hintText: "lbl_user_id".tr,
                            hintStyle: CustomTextStyles.titleLargePrimary_5,
                            prefix: Container(
                              margin:
                              EdgeInsets.fromLTRB(22.h, 13.v, 29.h, 13.v),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgUser,
                              ),
                            ),
                            prefixConstraints:
                            BoxConstraints(maxHeight: 66.v),
                          ),
                          SizedBox(height: 79.v),
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl_password".tr,
                            hintStyle: CustomTextStyles.titleLargePrimary_5,
                            prefix: Container(
                              margin:
                              EdgeInsets.fromLTRB(22.h, 13.v, 29.h, 13.v),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMap,
                              ),
                            ),
                            prefixConstraints:
                            BoxConstraints(maxHeight: 66.v),
                          ),
                          SizedBox(height: 78.v),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Color(0xFFDE1747),
                              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 24.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                            ),
                            onPressed: () {
                              onTapLogin(context);
                            },
                            child: Container(
                              height: 29.v,
                              child: Center(
                              child: Text(
                                "lbl_login".tr,
                                style: CustomTextStyles.titleLargeGray200,
                              ),
                            ),
                          ),
                          ),
                      ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTapImgArrowoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.regisScreen);
  }

  void onTapLogin(BuildContext context) async {
    try {
      // Validate form fields
      if (_formKey.currentState?.validate() ?? false) {
        // Use Firebase authentication to sign in with email and password
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailidoneController.text.trim(),
          password: passwordController.text.trim(),
        );

        // Navigate to the main book screen upon successful authentication
        Navigator.pushReplacementNamed(
            context, AppRoutes.mainbookscreenScreen);
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle login failure, show error message or alert
    }
  }
}
