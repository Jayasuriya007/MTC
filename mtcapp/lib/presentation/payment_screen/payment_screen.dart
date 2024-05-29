import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

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
              colors: [
                Color(0xFF590E2A),
                Color(0xFFDB5687),
                Color(0xFF6E1435),
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          child: Container(
            width: 388.h,
            padding: EdgeInsets.symmetric(horizontal: 55.h),
            child: Container(
              margin: EdgeInsets.only(top: 21.v, right: 13.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 39.v),
              decoration: AppDecoration.gradientIndigoToCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder44,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 37.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage10,
                    height: 91.adaptSize,
                    width: 91.adaptSize,
                    radius: BorderRadius.circular(45.h),
                  ),
                  SizedBox(height: 20),
                  // Text fields for UPI Id, mobile number, name, and amount
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'UPI Id',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle payment logic here
                      // Save to Firestore and navigate to transactionsuccessscreen
                      onTapPay(context);
                    },
                    child: Text('Pay'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Navigates to the transactionsuccessscreen when the "Pay" button is pressed.
  onTapPay(BuildContext context) {
    // Add logic to save to Firestore here

    // Navigate to transactionsuccessscreen
    Navigator.pushNamed(context, AppRoutes.transacSuccessScreen);
  }
}
