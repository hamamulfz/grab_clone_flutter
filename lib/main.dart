import 'package:flutter/material.dart';
import 'package:grab_clone/screens/bottom_navigation/main_screen.dart';
import 'package:grab_clone/screens/login_screen.dart';
import 'package:grab_clone/screens/splash_screen.dart';
import 'package:grab_clone/screens/verification_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grab Clone',
      theme: ThemeData(
        primaryColor: Color(0xFF02B462),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        VerificationScreen.id: (context) => VerificationScreen(),
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}
