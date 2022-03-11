import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submision_ahmadmuji/ui/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}
