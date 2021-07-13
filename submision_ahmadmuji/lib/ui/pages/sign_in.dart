import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/forgot_password.dart';
import 'package:submision_ahmadmuji/ui/pages/home_page.dart';
import 'package:submision_ahmadmuji/ui/pages/register.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 60,
                  bottom: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
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
                            fontSize: 22, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 55,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email Address"),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 350,
                      margin: EdgeInsets.only(top: 16, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Icon(Icons.security),
                            hintText: "Password"),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text('Forgot password ?')),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ForgotPassword();
                          }));
                        },
                        child: Text(
                          'Get Now',
                          style: TextStyle(
                              color: Colors.cyan.shade700, fontSize: 15),
                        ),
                      )
                    ]),
                    Container(
                      width: 60,
                      height: 70,
                      margin: EdgeInsets.only(top: 40, bottom: 40),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('Start Fresh Now? '),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterPage();
                          }));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.cyan.shade700, fontSize: 15),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
