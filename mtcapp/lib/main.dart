import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pradeep_s_application6/core/app_export.dart';
import 'package:pradeep_s_application6/presentation/gpaypaytmwallet_screen/gpaypaytmwallet_screen.dart';
import 'package:pradeep_s_application6/theme/theme_helper.dart';
import 'package:pradeep_s_application6/routes/app_routes.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAdec5RHEodIGSTexuxmG9SBWm5F1bnBNw",
        appId: "1:78659723368:android:7d0bab58f8b56dfe3e9bdd",
        messagingSenderId: "78659723368",
        projectId: "register-800e8",

      ),
    );
    // Initialize UPI India

  } catch (e) {
    print('Error initializing Firebase: $e');
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'pradeep_s_application6',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorService.navigatorKey,
      localizationsDelegates: [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
          'en',
          '',
        ),
      ],
      initialRoute: AppRoutes.loginregisterScreen,
      routes: AppRoutes.routes,
    );
  }
}
