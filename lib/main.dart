import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_one/screens/admin_dynamic_fare.dart';
import 'package:project_one/screens/admin_having_user_data.dart';
import 'package:project_one/screens/daily_usage.dart';
import 'package:project_one/screens/parent_login_screen.dart';
import 'package:project_one/screens/peak_analysis.dart';
import 'package:project_one/screens/welcome_screen.dart';
import 'package:project_one/screens/login_screen.dart';
import 'package:project_one/screens/ui_screen.dart';
import 'package:project_one/screens/admin_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot){
        // Check for errors
        if (snapshot.hasError) {
          print("something wrong");
          return UiScreen();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return  MaterialApp(
            theme: ThemeData.dark(),
            initialRoute: WelcomeScreen.id,
            //initialRoute: PeakAnalysis.id,
            //initialRoute: DailyUsage.id,
            //initialRoute: AdminUi.id,
            //initialRoute: Admin_Haveing_User_Data.id,
            //initialRoute: Admin_Dynamic_Fare.id,
            //initialRoute: AdminUi.id,
            routes: {
              WelcomeScreen.id : (context) => WelcomeScreen(),
              UiScreen.id : (context) => UiScreen(),
              ParentLogin.id : (context) => ParentLogin(),
              PeakAnalysis.id : (context) => PeakAnalysis(),
              DailyUsage.id : (context) => DailyUsage(),
              AdminUi.id : (context) => AdminUi(),
              Admin_Haveing_User_Data.id : (context) => Admin_Haveing_User_Data(),
              Admin_Dynamic_Fare.id : (context) => Admin_Dynamic_Fare(),
            },
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return UiScreen();
      },
    );


  }
}



