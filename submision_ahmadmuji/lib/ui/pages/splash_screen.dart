import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_in.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

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
                width: MediaQuery.of(context).size.width * 0.4,
                margin: EdgeInsets.only(bottom: 24),
                child: Lottie.asset(
                  'images/logo.json',
                ),
              ),
              Container(
                  width: 290,
                  margin: EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Text(
                    'New Experience',
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  )),
              Container(
                  width: 260,
                  margin: EdgeInsets.only(bottom: 24),
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
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    primary: colorPrimary,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: fontButtonText,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
