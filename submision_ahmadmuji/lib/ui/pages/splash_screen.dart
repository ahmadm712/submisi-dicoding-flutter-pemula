import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 220,
                width: 200,
                padding: EdgeInsets.only(bottom: 50),
                child: Lottie.asset('images/logo.json'),
              ),
              Container(
                  width: 290,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'New Experience',
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 260,
                  margin: EdgeInsets.only(bottom: 60),
                  child: Text(
                    'Order a Food much easier than any before',
                    style: GoogleFonts.poppins(fontSize: 20),
                    textAlign: TextAlign.center,
                  )),
              Container(
                height: 46,
                width: 250,
                padding: EdgeInsets.only(),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignInPage();
                    }));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
