import 'package:flutter/material.dart';
import 'package:resturant/size_config.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController _userNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;
  bool _change = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
              top: SizeConfig().scaleHeight(270),
            ),
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: SizeConfig().scaleWidth(30),
              top: SizeConfig().scaleHeight(320),
            ),
            child: Text(
              'Create an new account',
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
                    controller: _userNameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                    ),
                  ),
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: passwordVisible,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordVisible
                                ? passwordVisible = false
                                : passwordVisible = true;
                          });
                        },
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: passwordVisible,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            confirmPasswordVisible
                                ? confirmPasswordVisible = false
                                : confirmPasswordVisible = true;
                          });
                        },
                        icon: Icon(confirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                  ),
                  CheckboxListTile(
                    value: _change,
                    onChanged: (bool? newValue) {
                      if (newValue != null)
                        setState(() {
                          _change = newValue;
                        });
                    },
                    title: Text(
                      'By creating an account you have to agree\nwith our them & conduction.',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/successful_screen');
                    },
                    child: Text(
                      'Sign Up',
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
