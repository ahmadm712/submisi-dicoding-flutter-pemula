import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'food.dart';

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Food food = foodList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  food: food,
                );
              }));
            },
            child: Image.asset(
              food.imageAsset,
            ));
      },
      itemCount: foodList.length,
    );
  }
}
