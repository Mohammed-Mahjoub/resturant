import 'package:flutter/material.dart';
import 'package:resturant/on_boarding_screens/launch_Screen.dart';
import 'package:resturant/on_boarding_screens/on_boarding_screen.dart';
import 'package:resturant/on_boarding_screens/splash_screen.dart';
import 'package:resturant/operation_screens/login_screen.dart';
import 'package:resturant/operation_screens/sign_up_screen.dart';
import 'package:resturant/operation_screens/successful_screen.dart';
import 'package:resturant/store_screens/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/splash_screen': (context) => SplashScreen(),
        '/on_boarding_screen': (context) => OnBoardingScreen1(),
        '/login_screen': (context) => LoginScreen(),
        '/sign_up_screen': (context) => SignUpScreen(),
        '/successful_screen': (context) => SuccessfulScreen(),
        '/home_screen' : (context) => HomeScreen(),
      },
    );
  }
}
