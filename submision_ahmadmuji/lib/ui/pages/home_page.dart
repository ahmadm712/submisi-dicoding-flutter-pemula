import 'package:flutter/material.dart';

import 'package:submision_ahmadmuji/ui/pages/home_screen.dart';
import 'package:submision_ahmadmuji/ui/pages/profil.dart';
import 'package:submision_ahmadmuji/ui/pages/food_bucket.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [FoodBucketScreen(), ProfilScreen()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  BottomAppBar bottomNavBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: Container(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = HomeScreen();
                  currentTab = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: currentTab == 0 ? colorPrimary : Colors.grey,
                    size: 30,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        color: currentTab == 0 ? colorPrimary : Colors.grey),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = FoodBucketScreen();
                  currentTab = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined,
                      color: currentTab == 1 ? colorPrimary : Colors.grey,
                      size: 30),
                  Text(
                    'Cart',
                    style: TextStyle(
                        color: currentTab == 1 ? colorPrimary : Colors.grey),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = ProfilScreen();
                  currentTab = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_outline,
                      color: currentTab == 2 ? colorPrimary : Colors.grey,
                      size: 30),
                  Text(
                    'Profil',
                    style: TextStyle(
                        color: currentTab == 2 ? colorPrimary : Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
