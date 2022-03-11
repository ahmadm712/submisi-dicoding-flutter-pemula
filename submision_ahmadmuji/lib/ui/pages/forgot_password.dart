import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/function/global_function.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_up.dart';

import 'package:submision_ahmadmuji/ui/pages/sign_in.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(padding: EdgeInsets.symmetric(horizontal: 16), children: [
        Container(
          margin: EdgeInsets.only(
            top: 60,
            bottom: 50,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50),
          child: Text(
            'Reset Password',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40, bottom: 10),
          height: 55,
          width: MediaQuery.of(context).size.width,
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
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 16, bottom: 10),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.security),
                hintText: "New Password"),
          ),
        ),
        Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 16, bottom: 10),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.security),
                hintText: "Confirm Password"),
          ),
        ),
        Container(
          height: 46,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 40, bottom: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            onPressed: () {
              showAlertDialog(context: context, title: 'Reset Password Succes');
            },
            child: Text(
              'Reset Password',
              style: fontButtonText,
            ),
          ),
        ),
      ]),
    );
  }
}
