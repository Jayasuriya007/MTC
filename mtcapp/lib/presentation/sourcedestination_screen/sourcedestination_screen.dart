import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/widgets/custom_drop_down.dart';
import '../display_for_selection_screen/display_for_selection_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SourcedestinationScreen extends StatefulWidget {
  const SourcedestinationScreen({Key? key}) : super(key: key);

  @override
  _SourcedestinationScreenState createState() => _SourcedestinationScreenState();
}

class _SourcedestinationScreenState extends State<SourcedestinationScreen> {
  List<String> dropdownItemList = [

    'Thiruvanmiyur',
    'Tidel Park',
    'S.R.P.Tool',
    'I.G.P',
    'Puthu Nagar',
    'Perungudi',
    'Seevaram',
    '230KVTower',
    'KamatchiHospital',
    'Pallavaram',
    'Chromepet',
    'Mepz',
    'Kadaperi',
    'Tambaram',
    'EasTambaram ',
    'Aathagar',
    'Selaiyur',
    'Karajapuram',
    'Sembakkam',
    'S.I.V.E.T.',
    'Santhosuram',
    'Medavakkam ',
    'PalavanNagar',
    'Perumbakkam',
    'Globospital',
    'Toll Gate',
    'Shoallur',
    'Accenture',
    'Okkiampet',
    'Jain College',
    'Mettukuppam',
    'PTC',
    'Okkiyampet',
    'TCS',
    'Karapakkam',
    'Tambaram East',
    'C.M.B.T',
    'M.M.D.A.',
    'Vadapalani',
    'KasiTheatre',
    'Ekatuthangal',
    'SaidapetCourt',
    'Velachery',
    'Tansi Nagar',
    'Baby Nagar',
    'Tharamani',
    'Semmancheri',
    'Navallur',
    'Sirucheri',
    'Broadway',
    'Parrys',
    'Secretariat',
    'AnnaSquare',
    'MarinaBeach',
    'LightHouse',
    'MRCNagar',
    'AdyarSignal',
    'AdyarDepot',
    'T.Nagar',
    'Saidapet',
    'RajBhavan',
    'C.L.R.I',
    'Madyakailash'

  ];
  String? selectedSource;
  String? selectedDestination;

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.center,
              colors: [
                Color(0xFFDB5687),
                Color(0xFF6E1435),
                Color(0xFFE53939),
              ],
            ),
          ),
          child: SizedBox(
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMtcdeluxe4,
                  height: 355,
                  width: 385,
                  radius: BorderRadius.vertical(bottom: Radius.circular(34)),
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 48, vertical: 119),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup4),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildLocationRow(
                          'lbl_source'.tr,
                          selectedSource,
                              (value) {
                            setState(() {
                              selectedSource = value;
                            });
                          },
                        ),
                        SizedBox(height: 41),
                        buildArrowRow(),
                        buildLocationRow(
                          'lbl_destination'.tr,
                          selectedDestination,
                              (value) {
                            setState(() {
                              selectedDestination = value;
                            });
                          },
                        ),
                        SizedBox(height: 45),
                        buildBookTicketButton(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLocationRow(String hintText, String? selectedValue,
      ValueChanged<String?> onChanged) {
    return Padding(
      padding: EdgeInsets.only(top: 30, right: 10),
      child: Row(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgLocation,
            height: 27,
            width: 23,
            margin: EdgeInsets.only(top: 10, bottom: 3),
          ),
          Expanded(
            child: CustomDropDown(
              icon: CustomImageView(
                svgPath: ImageConstant.imgOffer,
                color: Colors.purpleAccent,
                height: 14,
                width: 18,
              ),
              margin: EdgeInsets.only(right: 14),
              hintText: hintText,
              value: selectedValue ?? dropdownItemList.first,
              items: dropdownItemList,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildArrowRow() {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgArrowdown,
            height: 34,
            width: 34,
            margin: EdgeInsets.only(top: 26),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgArrowdown,
            height: 34,
            width: 34,
            margin: EdgeInsets.only(left: 12, bottom: 20),
          ),
        ],
      ),
    );
  }

  Widget buildBookTicketButton(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 75,
        width: 242,
        child: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (selectedSource != null && selectedDestination != null) {
                  onTapView(context);
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Select Source and Destination'),
                        content: Text(
                            'Please select both source and destination to book a ticket.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Container(
                height: 55,
                width: 222,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[700],
                  borderRadius: BorderRadius.circular(121),
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'lbl_book_ticket'.tr,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void onTapView(BuildContext context) async {
    if (selectedSource != null) {
      try {
        final response = await http.post(
          Uri.parse('http://192.168.43.98:8080/selected-source'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode({'selectedSource': selectedSource}),
        );

        if (response.statusCode == 200) {
          final updatedData = jsonDecode(response.body);
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Success'),
                content: Text('Database updated successfully.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      fetchAndProcessRouteData();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        } else {
          print('Failed to update Firebase Realtime Database');
        }
      } catch (e) {
        print('Error: $e');
      }
    }
  }

  void fetchAndProcessRouteData() async {
    if (selectedSource != null) {
      DatabaseReference rootRef = FirebaseDatabase.instance.reference();
      try {
        DatabaseEvent databaseEvent = await rootRef.once();
        if (databaseEvent.snapshot.value != null) {
          Map<dynamic, dynamic>? data =
          databaseEvent.snapshot.value as Map<dynamic, dynamic>?;

          if (data != null) {
            processUpdatedData(data, selectedSource!, context);
          } else {
            _showDialog('Invalid Data Format',
                'The fetched data is not in the expected format.');
          }
        } else {
          _showDialog('No Data Available', 'No route data is available.');
        }
      } catch (e) {
        print("Error fetching route data: $e");
        _showDialog('Error', 'Error fetching route data: $e');
      }
    }
  }

  void _showDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void processUpdatedData(Map<dynamic, dynamic> data, String selectedSource, BuildContext context) {
    List<Map<dynamic, dynamic>> availableRoutes = [];

    // Step 1: Iterate over the top-level nodes to find the node with BusStop matching selectedSource
    String? nodeKeyWithSourceBusStop;
    data.forEach((nodeKey, nodeData) {
      if (nodeData is Map<dynamic, dynamic>) {
        if (nodeData['BusStop'] == selectedSource) {
          nodeKeyWithSourceBusStop = nodeKey;
          availableRoutes.add(Map<dynamic, dynamic>.from(nodeData));
        }
      }
    });

    if (availableRoutes.isNotEmpty) {
      if (availableRoutes.length == 1) {
        // Only one route available, show directly
        Map<dynamic, dynamic> route = availableRoutes[0];
        String routeId = route['RouteID'].toString();
        int eta = route['ETA']; // Take ETA as an integer
        int crowdLevel = route['crowd_level'];
        int category = tryParseInt(route['Category'].toString());
        showInformationPopup(context, eta.toString(), routeId, selectedSource, crowdLevel.toString(), category.toString());
      } else {
        // Multiple routes available, perform sorting and selection
        availableRoutes.sort((a, b) => tryParseInt(a['Category'].toString()).compareTo(tryParseInt(b['Category'].toString())));

        String? bestRouteId;
        int? eta;
        int? crowdLevel;
        int? category;

        for (var i = 0; i < availableRoutes.length - 1; i++) {
          var currentRoute = availableRoutes[i];
          var nextRoute = availableRoutes[i + 1];

          int currentEta = currentRoute['ETA']; // Take ETA as an integer
          int nextEta = nextRoute['ETA']; // Take ETA as an integer

          // Calculate the absolute difference between the ETA values
          int etaDifference = (currentEta - nextEta).abs();

          int currentCrowdLevel = currentRoute['crowd_level'];

          if (etaDifference <= 5 && currentCrowdLevel < 40) {
            bestRouteId = currentRoute['RouteID'].toString();
            eta = currentEta;
            crowdLevel = currentCrowdLevel;
            category = tryParseInt(currentRoute['Category'].toString());
            break;
          }
        }

        if (bestRouteId != null && eta != null && crowdLevel != null && category != null) {
          showInformationPopup(context, eta.toString(), bestRouteId, selectedSource, crowdLevel.toString(), category.toString());
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('No Suitable Route Found'),
                content: Text('No routes with acceptable crowd level found for the selected source.'),
                actions: [

                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      }
    } else {
      // Handle case where no node with the selected source is found
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('No Route Found'),
            content: Text('No route found for the selected source.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  int tryParseInt(String value) {
    try {
      return int.parse(value.trim());
    } catch (e) {
      print("Error parsing integer: $e");
      // Return a default value in case of parsing error
      return 0;
    }
  }

  void showInformationPopup(BuildContext context, String eta, String routeId, String source, String crowdLevel, String category) {
    String crowdLevelLabel;
    int crowdLevelValue = int.parse(crowdLevel);
    if (crowdLevelValue >= 41) {
      crowdLevelLabel = 'Highly Dense Crowded';
    } else if (crowdLevelValue >= 31) {
      crowdLevelLabel = 'Highly Crowded';
    } else if (crowdLevelValue >= 21) {
      crowdLevelLabel = 'Crowded';
    } else if (crowdLevelValue >= 11) {
      crowdLevelLabel = 'Less Crowded';
    } else {
      crowdLevelLabel = 'Seats Available';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Information'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Source: $source'),
              Text('ETA: $eta'),
              Text('RouteID: $routeId'),
              Text('Crowd_level: $crowdLevel ($crowdLevelLabel)'),
              Text('Category: $category'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                navigateToDisplayForSelectionScreen(context, eta, routeId, category, selectedSource!, selectedDestination!, crowdLevel);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void navigateToDisplayForSelectionScreen(BuildContext context, String eta, String routeId, String category, String source, String destination, String crowdLevel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DisplayForSelectionScreen(
          eta: eta,
          routeId: routeId,
          category: category,
          selectedSource: source,
          selectedDestination: destination,
          crowdLevel: crowdLevel,
        ),
      ),
    );
  }
}