import 'package:flutter/material.dart';
import 'package:pradeep_s_application6/presentation/loginregister_screen/loginregister_screen.dart';
import 'package:pradeep_s_application6/presentation/splash_screen/splash_screen.dart';
import 'package:pradeep_s_application6/presentation/sourcedestination_screen/sourcedestination_screen.dart';
import 'package:pradeep_s_application6/presentation/payment_screen/payment_screen.dart';
import 'package:pradeep_s_application6/presentation/cardpayment_screen/cardpayment_screen.dart';
import 'package:pradeep_s_application6/presentation/netbanking_screen/netbanking_screen.dart';
import 'package:pradeep_s_application6/presentation/transac_success_screen/transac_success_screen.dart';
import 'package:pradeep_s_application6/presentation/regis_screen/regis_screen.dart';
import 'package:pradeep_s_application6/presentation/login_screen/login_screen.dart';
import 'package:pradeep_s_application6/presentation/mainbookscreen_screen/mainbookscreen_screen.dart';
import 'package:pradeep_s_application6/presentation/display_for_selection_screen/display_for_selection_screen.dart';
import 'package:pradeep_s_application6/presentation/gpaypaytmwallet_screen/gpaypaytmwallet_screen.dart';
import 'package:pradeep_s_application6/presentation/cofirmedticket_screen/cofirmedticket_screen.dart';
import 'package:pradeep_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';
class AppRoutes {
  static const String loginregisterScreen = '/loginregister_screen';


  static const String splashScreen = '/splash_screen';


  static const String sourcedestinationScreen = '/sourcedestination_screen';


  static const String paymentScreen = '/payment_screen';


  static const String cardpaymentScreen = '/cardpayment_screen';


  static const String netbankingScreen = '/netbanking_screen';


  static const String transacSuccessScreen = '/transac_success_screen';


  static const String regisScreen = '/regis_screen';


  static const String loginScreen = '/login_screen';


  static const String mainbookscreenScreen = '/mainbookscreen_screen';


  static const String displayForSelectionScreen = '/display_for_selection_screen';


  static const String passengerSelectionScreen = '/passenger_selection_screen';


  static const String sourcdestConfirmScreen = '/sourcdest_confirm_screen';


  static const String gpaypaytmwalletScreen = '/gpaypaytmwallet_screen';


  static const String cofirmedticketScreen = '/cofirmedticket_screen';


  static const String appNavigationScreen = '/app_navigation_screen';


  static Map<String, WidgetBuilder> routes = {
    loginregisterScreen: (context) => LoginregisterScreen(),
    splashScreen: (context) => SplashScreen(),
    sourcedestinationScreen: (context) => SourcedestinationScreen(),
    paymentScreen: (context) => PaymentScreen(),
    cardpaymentScreen: (context) => CardpaymentScreen(),
    netbankingScreen: (context) => NetbankingScreen(),
    transacSuccessScreen: (context) => TransacSuccessScreen(),
    regisScreen: (context) => RegisScreen(),
    loginScreen: (context) => LoginScreen(),
    mainbookscreenScreen: (context) => MainbookscreenScreen(),
    displayForSelectionScreen: (context) => DisplayForSelectionScreen( selectedSource: '',selectedDestination: '', eta: '', routeId: '', category: '', crowdLevel: ''  ),
    gpaypaytmwalletScreen: (context) => GpaypaytmwalletScreen(),
    cofirmedticketScreen: (context) => CofirmedticketScreen(routeId: '',),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
