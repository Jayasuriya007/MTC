import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';

class CofirmedticketScreen extends StatefulWidget {
  final String routeId;

  const CofirmedticketScreen({Key? key, required this.routeId}) : super(key: key);

  @override
  _CofirmedticketScreenState createState() => _CofirmedticketScreenState();
}

class _CofirmedticketScreenState extends State<CofirmedticketScreen> {
  String ticketNumber = "";

  @override
  void initState() {
    super.initState();
    generateTicketNumber();
  }

  void generateTicketNumber() {
    const letters = 'ABCDFGHIJKLMNOPQRSTUVWXYZ';
    String prefix = String.fromCharCodes(List.generate(2, (index) => letters.codeUnitAt(Random().nextInt(letters.length))));
    int number = Random().nextInt(900) + 100;
    ticketNumber = prefix + number.toString();
  }

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
              end: Alignment(1, 1),
              colors: [
                Colors.blue,
                Colors.purple,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 23.v),
            child: Column(
              children: [
                SizedBox(
                  height: 143.v,
                  width: 325.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: DottedBorder(
                          color: theme.colorScheme.primary,
                          padding: EdgeInsets.all(6),
                          strokeWidth: 6.h,
                          radius: Radius.circular(22),
                          borderType: BorderType.RRect,
                          dashPattern: [2],
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 13.v),
                            decoration: AppDecoration.gradientPurpleToPurple.copyWith(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                mainbookscreen(context);
                              },
                              child: Container(
                                width: 398.h,
                                margin: EdgeInsets.only(right: 15.h, bottom: 8.v),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Ticket".tr,
                                        style: CustomTextStyles.titleLargeTeal10001,
                                      ),
                                      TextSpan(
                                        text: "\n$ticketNumber\n",
                                        style: CustomTextStyles.titleLargeTeal10001,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      mainbookscreennew(context);
                    },
                    child: Container(
                      width: 306.h,
                      margin: EdgeInsets.only(left: 29.h, top: 72.v),
                      child: Text(
                        "msg_ticket_valid_through 1 hrs from ticket booking".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeBlack90001,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 65.v),
                Align(
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage6,
                    height: 85.v,
                    width: 236.h,
                  ),
                ),
                SizedBox(height: 58.v),
                Align(
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage7,
                    height: 124.v,
                    width: 143.h,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void mainbookscreen(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.mainbookscreenScreen);
  }

  void mainbookscreennew(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.mainbookscreenScreen);
  }
}
