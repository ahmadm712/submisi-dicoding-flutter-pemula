import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/food_order.dart';
import 'package:submision_ahmadmuji/ui/pages/forgot_password.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_up.dart';
import 'package:submision_ahmadmuji/ui/pages/sign_in.dart';

class ProfilScreen extends StatelessWidget {
  final fontStyleA = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(30),
              height: 270,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  border: Border.all(color: Colors.white70)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'images/ahmad_img.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Ahmad Muji Burohman',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ahmadmuji2001@gmail.com',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ])),
          SizedBox(
            height: 26,
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 370,
            decoration: BoxDecoration(
                color: Colors.white60,
                border: Border.all(color: Colors.white70)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Order',
                          style: fontStyleA,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return FoodOrder();
                              }));
                            },
                            icon: Icon(Icons.keyboard_arrow_right))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Edit Profile',
                          style: fontStyleA,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RegisterPage();
                              }));
                            },
                            icon: Icon(Icons.keyboard_arrow_right))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Home Address',
                          style: fontStyleA,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RegisterPage();
                              }));
                            },
                            icon: Icon(Icons.keyboard_arrow_right))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Security',
                          style: fontStyleA,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ForgotPassword();
                              }));
                            },
                            icon: Icon(Icons.keyboard_arrow_right))
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payments',
                          style: fontStyleA,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_right))
                      ]),
                  Center(
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignInPage();
                        }));
                      },
                      child: Icon(
                        Icons.logout_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
