import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_in.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 10),
                      height: 55,
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Icon(Icons.person),
                            hintText: "Full Name"),
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
                            prefixIcon: Icon(Icons.email),
                            hintText: "Email Addres"),
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
                            prefixIcon: Icon(Icons.map),
                            hintText: "Full Addres"),
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
                            hintText: "Confirm Password"),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Text('Register'),
                      ),
                    ),
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

showAlertDialog(BuildContext context) {
  // set up the buttons

  Widget continueButton = ElevatedButton(
    child: Text("Continue"),
    style: ElevatedButton.styleFrom(primary: Colors.green),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SignInPage();
      }));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Register Succes"),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
