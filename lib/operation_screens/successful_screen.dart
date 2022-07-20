import 'package:flutter/material.dart';
import 'package:resturant/size_config.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  _SuccessfulScreenState createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(90),
              top: SizeConfig().scaleHeight(200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.verified_outlined,
                  color: Colors.green,
                  size: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Successful!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'You have successfully registered in\n      our app and start working in it.',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(40),
              top: SizeConfig().scaleHeight(670),
              end: SizeConfig().scaleWidth(40),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/splash_screen');
              },
              child: Text(
                'Get Start',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 50),
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
