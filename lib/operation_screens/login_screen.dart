import 'package:flutter/material.dart';
import 'package:resturant/size_config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool visible = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child:  Image(
              image: AssetImage('images/logo.png'),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(30),
              top: SizeConfig().scaleHeight(50),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/splash_screen');
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(30),
              top: SizeConfig().scaleHeight(300),
            ),
            child: Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(30),
              top: SizeConfig().scaleHeight(350),
            ),
            child: Text(
              'please login or sign up to continue our app',
              style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(30),
              end: SizeConfig().scaleWidth(30),
              top: SizeConfig().scaleHeight(370),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: visible,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visible ? visible = false : visible = true;
                          });
                        },
                        icon: Icon(
                            visible ? Icons.visibility : Icons.visibility_off),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home_screen');
                    },
                    child: Text(
                      'Login',
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
