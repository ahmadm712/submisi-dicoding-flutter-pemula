import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/models/food.dart';
import 'package:submision_ahmadmuji/ui/pages/detail_screen.dart';

class FoodCardX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final Food food = foodList[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(
                food: food,
              );
            }));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            margin: EdgeInsets.only(
              right: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.6,
                  blurRadius: 0.6,
                  blurStyle: BlurStyle.outer,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imageAsset,
                    width: 150,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  food.name,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset(
                  'images/stars_4.7.png',
                ),
              ],
            ),
          ),
        );
      },
      itemCount: foodList.length,
    );
  }
}
