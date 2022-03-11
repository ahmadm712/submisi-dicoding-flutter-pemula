import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

class FoodOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Colors.white70)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Center(
                            child: Text(
                              'Order Status',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ])),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 390,
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
                          'Your Order',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Stack(children: [
                        Image.asset(
                          'images/seblak.jpg',
                          height: 100,
                          width: 100,
                        ),
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Seblak',
                            style: fontStylefoodname,
                          ),
                          Text(
                            'In Progress',
                            style: fontStylefoodnamea,
                          ),
                          Row(
                            children: [
                              Text(
                                '4',
                                style: fontStylefoodprice,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Items',
                                style: fontStylefoodprice,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text('IDR'),
                              Text(
                                '40.000',
                                style: fontStylefoodprice,
                              )
                            ],
                          ),
                        ],
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Stack(children: [
                        Image.asset(
                          'images/surabi.jpg',
                          height: 100,
                          width: 100,
                        ),
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Surabi',
                            style: fontStylefoodname,
                          ),
                          Text(
                            'In Progress',
                            style: fontStylefoodnamea,
                          ),
                          Row(
                            children: [
                              Text(
                                '2',
                                style: fontStylefoodprice,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Items',
                                style: fontStylefoodprice,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text('IDR'),
                              Text(
                                '8.000',
                                style: fontStylefoodprice,
                              )
                            ],
                          ),
                        ],
                      ),
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: FloatingActionButton(
                        backgroundColor: colorPrimary,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
