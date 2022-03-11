import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/detail_screen.dart';
import 'package:submision_ahmadmuji/models/food.dart';
import 'package:submision_ahmadmuji/ui/pages/profil.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';
import 'package:submision_ahmadmuji/ui/widget/food_card.dart';

import '../widget/food_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FOOD MARKET',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Text('Let Get Some Food'),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilScreen(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      'images/ahmad_img.png',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          // start on popular food
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 16),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: colorTextFieldChat.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    controller: textEditController,
                    onChanged: (value) {},
                    onSubmitted: (value) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        size: 17,
                      ),
                      hintText: 'Cari',
                    ),
                  ),
                )
              ],
            ),
          ),
          Text(
            'Today Offers',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
            ),
          ),
          FoodCardX(),
          // end on popular food
          SizedBox(
            height: 8,
          ),

          Text(
            'Promo',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
            ),
          ),
          FoodCardX(),
          // end on popular food
          SizedBox(
            height: 8,
          ),
          Text(
            'Best Seller',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
            ),
          ),
          FoodCardX(),
        ],
      ),
    );
  }
}
