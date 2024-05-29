import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/presentation/display_for_selection_screen/widgets/busrouteinfo_item_widget.dart';
import 'package:pradeep_s_application6/widgets/custom_elevated_button.dart';

class DisplayForSelectionScreen extends StatefulWidget {
  final String eta;
  final String routeId;
  final String category;
  final String selectedSource;
  final String selectedDestination;
  final String crowdLevel;

  const DisplayForSelectionScreen({
    Key? key,
    required this.eta,
    required this.routeId,
    required this.category,
    required this.selectedSource,
    required this.selectedDestination,
    required this.crowdLevel,
  }) : super(key: key);

  @override
  _DisplayForSelectionScreenState createState() =>
      _DisplayForSelectionScreenState();
}

class _DisplayForSelectionScreenState extends State<DisplayForSelectionScreen> {
  int _passengerCount = 1; // Initial value for passenger count dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''), // Empty string to remove the text from app bar
        backgroundColor: Colors.transparent, // Make app bar transparent
        elevation: 0, // Remove app bar elevation
      ),
      extendBodyBehindAppBar: true, // Extend body behind app bar
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  Color(0xFF590E2A),
                  Color(0xFFDB5687),
                  Color(0xFF6E1435),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BusrouteinfoItemWidget(
                    source: widget.selectedSource,
                    destination: widget.selectedDestination,
                    eta: widget.eta,
                    routeId: widget.routeId,
                    category: widget.category,
                    crowdLevel: widget.crowdLevel,
                  ),
                  const SizedBox(height: 12),
                  DropdownButton<int>(
                    value: _passengerCount,
                    onChanged: (newValue) {
                      setState(() {
                        _passengerCount = newValue!;
                      });
                    },
                    items: List.generate(6, (index) => index + 1)
                        .map((value) => DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Center(
              child: Container(
                width: 120, // Adjust width as needed
                height: 40, // Adjust height as needed
                child: CustomElevatedButton(
                  text: 'Pay Rs 20',
                  backgroundColor: Colors.red, // Set background color to red
                  onTap: onTapPayrs20,
                  buttonTextStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.white, // Set text color to white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapPayrs20() async {
    const String url = "https://gateway-ui.netlify.app/";
    if (await canLaunch(url)) {
      await launch(url);
      // Simulate successful payment with a 5-second delay
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushNamed(context, AppRoutes.transacSuccessScreen);
      });
    } else {
      // Handle error if the link cannot be launched
      print("Could not launch $url");
    }
  }
}
