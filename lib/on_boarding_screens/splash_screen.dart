import 'package:flutter/material.dart';
import 'package:resturant/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Center(
            child: Image(
              image: AssetImage('images/logo.png'),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(35),
              top: SizeConfig().scaleHeight(650),
              end: SizeConfig().scaleWidth(35),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 50),
                primary: Color.fromRGBO(196, 196, 196, 1000),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    side: BorderSide(color: Colors.white,width: 2)
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(35),
              top: SizeConfig().scaleHeight(710),
              end: SizeConfig().scaleWidth(35),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/sign_up_screen');
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 50),
                primary: Color.fromRGBO(196, 196, 196, 1000),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    side: BorderSide(color: Colors.white,width: 2)
                ),
              ),
              child: Text(
                'Sign UP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
