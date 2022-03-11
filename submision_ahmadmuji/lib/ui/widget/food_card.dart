import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/models/food.dart';
import 'package:submision_ahmadmuji/ui/pages/detail_screen.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

class FoodCardX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
