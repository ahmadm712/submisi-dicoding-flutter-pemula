import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/forgot_password.dart';
import 'package:submision_ahmadmuji/ui/pages/home_page.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_up.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 60,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 70,
                    width: 70,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    'Welcome Back \n Explorer!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      hintText: "Email Address",
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(Icons.security),
                        hintText: "Password"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Forgot password ?',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ForgotPassword();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Get Now',
                        style: TextStyle(
                          color: colorPrimary,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 60,
                    height: 70,
                    margin: EdgeInsets.only(top: 40, bottom: 40),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                      backgroundColor: colorPrimary,
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Start Fresh Now? ',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: colorPrimary, fontSize: 15),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
