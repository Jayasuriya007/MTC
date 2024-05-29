import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/app_bar/appbar_image.dart';
import 'package:pradeep_s_application6/widgets/app_bar/appbar_image_1.dart';
import 'package:pradeep_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:pradeep_s_application6/widgets/custom_outlined_button.dart';
import 'package:pradeep_s_application6/widgets/custom_text_form_field.dart';

class RegisScreen extends StatelessWidget {
  RegisScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
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
        appBar: CustomAppBar(
          leadingWidth: 64.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgArrow1,
            margin: EdgeInsets.only(left: 18.h, top: 35.v, bottom: 36.v),
            onTap: () {
              onTapArrowoneone(context);
            },
          ),
          title: AppbarImage1(
            imagePath: ImageConstant.imgScreenshot42,
            margin: EdgeInsets.only(left: 45.h),
          ),
        ),
        body: Stack(
          children: [
            Container(
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
                  padding:
                  EdgeInsets.symmetric(horizontal: 42.h, vertical: 24.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Positioned(
                        top: 16.v,
                        left: 16.h,
                        child: Text(
                          "Register user information,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomTextFormField(
                          controller: emailController,
                          hintText: "Email Id".tr,
                          hintStyle: CustomTextStyles.titleLargePrimary_4,
                          prefix: Container(
                            margin:
                            EdgeInsets.fromLTRB(25.h, 15.v, 30.h, 15.v),
                            child:
                            CustomImageView(svgPath: ImageConstant.imgUser),
                          ),
                          prefixConstraints:
                          BoxConstraints(maxHeight: 68.v),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomTextFormField(
                          controller: mobileNumberController,
                          hintText: "Mobile number".tr,
                          hintStyle: CustomTextStyles.titleLargePrimary_4,
                          prefix: Container(
                            margin:
                            EdgeInsets.fromLTRB(25.h, 15.v, 30.h, 15.v),
                            child:
                            CustomImageView(svgPath: ImageConstant.imgUser),
                          ),
                          prefixConstraints:
                          BoxConstraints(maxHeight: 68.v),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomTextFormField(
                          controller: passwordController,
                          hintText: "lbl_password".tr,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin:
                            EdgeInsets.fromLTRB(24.h, 15.v, 30.h, 15.v),
                            child:
                            CustomImageView(svgPath: ImageConstant.imgMap),
                          ),
                          prefixConstraints:
                          BoxConstraints(maxHeight: 68.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                            top: 21.v,
                            right: 30.h,
                            bottom: 21.v,
                          ),
                          borderDecoration:
                          TextFormFieldStyleHelper.outlinePrimaryLR341,
                          fillColor: appTheme.purple10002,
                        ),
                      ),
                      SizedBox(height: 47.v),
                      CustomOutlinedButton(
                        width: 190.h,
                        text: "lbl_register2".tr.toUpperCase(),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL45,
                        buttonTextStyle: CustomTextStyles.titleLargeGray200,
                        onTap: () {
                          onTapRegister(context);
                        },
                      ),
                      SizedBox(height: 60.v),
                      CustomOutlinedButton(
                        width: 190.h,
                        text: "lbl_login2".tr.toUpperCase(),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL35,
                        buttonTextStyle: CustomTextStyles.titleLargeGray200,
                        onTap: () {
                          onTapLogin(context);
                        },
                      ),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTapRegister(BuildContext context) async {
    try {
      // Validate form fields
      if (_formKey.currentState?.validate() ?? false) {
        // Use Firebase authentication to create a new user with email and password
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // Save user data to Firestore
        await FirebaseFirestore.instance.collection('users').doc().set({
          'email': emailController.text.trim(),
          'mobileNumber': mobileNumberController.text.trim(),
        });

        // Show registration success dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Registration Success'),
              content: Text('Your account has been successfully registered.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    // Close the dialog
                    Navigator.of(context).pop();
                    // Navigate to the login screen
                    onTapLogin(context);
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print(' Error during registration: $e');
      // Handle registration failure, show error message or alert
    }
  }

  void onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  void onTapArrowoneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginregisterScreen);
  }
}
