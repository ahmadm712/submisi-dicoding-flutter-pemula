import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_in.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

showAlertDialog(
    {BuildContext? context,
    String textButton = "Continue",
    String title = "Succes",
    StatefulWidget? stful}) {
  // set up the buttons

  Widget continueButton = ElevatedButton(
    child: Text(textButton),
    style: ElevatedButton.styleFrom(
        primary: colorPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    onPressed: () {
      Navigator.push(
          context!,
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          ));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context!,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
