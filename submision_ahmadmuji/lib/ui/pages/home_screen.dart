import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/models/detail_screen.dart';
import 'package:submision_ahmadmuji/models/food.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fontStyleB =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FOOD MARKET',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        Text('Let Get Some Food'),
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('images/logo.png'))
                  ],
                ),
              ),
              // start on popular food
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Some Popular Food on this Week',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: FoodCardX(),
              ),
              // end on popular food
              SizedBox(
                height: 10,
              ),
              //start on category
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'All',
                                style: fontStyleB,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Fast Food',
                                style: fontStyleB,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Soup',
                                style: fontStyleB,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'Healty Food',
                                style: fontStyleB,
                              ),
                            ),
                          ]),
                    ]),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: FoodCardX(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Some Best Selling Food',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: FoodCardX(),
              ),

              //end of category
            ],
          ),
        ),
      ),
    );
  }
}

class FoodCardX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final Food food = foodList[index];

        return InkWell(
          child: Card(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(
                                  food: food,
                                );
                              }));
                            },
                            child: Expanded(
                              child: Image.asset(
                                food.imageAsset,
                                width: 150,
                                height: 155,
                              ),
                            ))),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      food.name,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Image.asset('images/stars_4.7.png'),
                  ]),
            ),
          ),
        );
      },
      itemCount: foodList.length,
    );
  }
}
