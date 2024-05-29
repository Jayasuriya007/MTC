import 'package:flutter/widgets.dart';
import 'package:pradeep_s_application6/core/utils/size_utils.dart';
import 'package:pradeep_s_application6/presentation/display_for_selection_screen/widgets/busrouteinfo_item_widget.dart';
import 'package:pradeep_s_application6/presentation/display_for_selection_screen/widgets/busrouteinfo_item_widget.dart';

class BusRouteInfoList extends StatelessWidget {
  final List<Map<String, dynamic>> routeDetailsList;
  final String selectedSource;
  final String selectedDestination;

  const BusRouteInfoList({
    Key? key,
    required this.routeDetailsList,
    required this.selectedSource,
    required this.selectedDestination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(height: 32.v);
      },
      itemCount: routeDetailsList.length,
      itemBuilder: (context, index) {
        return BusrouteinfoItemWidget(
          source: routeDetailsList[index]['Source'],
          destination: routeDetailsList[index]['Destination'],
          eta: routeDetailsList[index]['ETA'],
          routeId: routeDetailsList[index]['Route_id'],
          category: routeDetailsList[index]['Category'], crowdLevel: routeDetailsList[index]['crowdlevel'], // Add this line
        );
      },
    );
  }
}
