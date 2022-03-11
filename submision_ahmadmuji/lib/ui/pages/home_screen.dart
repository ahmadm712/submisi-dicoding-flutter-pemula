import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/detail_screen.dart';
import 'package:submision_ahmadmuji/models/food.dart';
import 'package:submision_ahmadmuji/ui/pages/profil.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';
import 'package:submision_ahmadmuji/ui/widget/food_card.dart';

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
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 8),
            width: double.infinity,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                Food food = foodList[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(food: food),
                      )),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 166,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.2),
                          )
                        ]),
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            food.imageAsset,
                            height: 100,
                            width: 166,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          food.name,
                          style: fontStylefoodnamea,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          food.foodPrice,
                          style: fontStylefoodprice,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
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
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 8),
            width: double.infinity,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                Food food = foodList[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(food: food),
                      )),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 166,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.2),
                          )
                        ]),
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            food.imageAsset,
                            height: 100,
                            width: 166,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          food.name,
                          style: fontStylefoodnamea,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          food.foodPrice,
                          style: fontStylefoodprice,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
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
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 8),
            width: double.infinity,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                Food food = foodList[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(food: food),
                      )),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 166,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1,
                            color: Colors.black.withOpacity(0.2),
                          )
                        ]),
                    margin: EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            food.imageAsset,
                            height: 100,
                            width: 166,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          food.name,
                          style: fontStylefoodnamea,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          food.foodPrice,
                          style: fontStylefoodprice,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
