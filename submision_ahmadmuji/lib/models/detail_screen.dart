import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/models/food.dart';
import 'package:submision_ahmadmuji/ui/pages/food_bucket.dart';

class DetailScreen extends StatefulWidget {
  final Food food;

  DetailScreen({required this.food});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _bucketCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  widget.food.imageAsset,
                  width: 400,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        ClipRRect(
                          child: Row(children: [
                            IconButton(
                              icon: Icon(
                                Icons.shopping_basket,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return FoodBucketScreen();
                                }));
                              },
                            ),
                            Text(
                              '$_bucketCount',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Column(children: [
                Text(
                  widget.food.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('images/stars_4.7.png'),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                widget.food.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Price :',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              widget.food.foodPrice,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              'Category :',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              widget.food.foodCategory,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Ingredients',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          widget.food.ingredients,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        child: Container(
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Row(children: [
                  Icon(
                    Icons.messenger,
                    color: Colors.cyan.shade600,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(children: [
                  Icon(
                    Icons.shop,
                    color: Colors.cyan.shade600,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
              MaterialButton(
                onPressed: () {
                  _incrementCounter();
                },
                child: Row(children: [
                  Icon(Icons.shopping_basket, color: Colors.cyan.shade600),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Add on Bucket',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _bucketCount++;
    });
  }
}
