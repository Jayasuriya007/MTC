import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/core/app_export.dart';


class BusrouteinfoItemWidget extends StatelessWidget {
  final String source;
  final String destination;
  final String eta;
  final String routeId;
  final String category;
  final String crowdLevel;


  const BusrouteinfoItemWidget({
    Key? key,
    required this.source,
    required this.destination,
    required this.eta,
    required this.routeId,
    required this.category,
    required this.crowdLevel,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFCF2FA4), Color(0xFF465268)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Source: $source',
            style: CustomTextStyles.titleLargeGray10001,
          ),
          Text(
            'Destination: $destination',
            style: CustomTextStyles.titleLargeGray10001,
          ),
          Text(
            'ETA: $eta',
            style: CustomTextStyles.titleLargeGray10001,
          ),
          Text(
            'Route ID: $routeId',
            style: CustomTextStyles.titleLargeGray10001,
          ),
          Text(
            'Category: $category',
            style: CustomTextStyles.titleLargeGray200,
          ),
          Text(
            'Crowd Level: $crowdLevel',
            style: CustomTextStyles.titleLargeGray200,
          ),
        ],
      ),
    );
  }
}
