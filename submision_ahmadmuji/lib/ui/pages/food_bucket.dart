import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/ui/pages/food_order.dart';

class FoodBucketScreen extends StatefulWidget {
  @override
  _FoodBucketScreenState createState() => _FoodBucketScreenState();
}

class _FoodBucketScreenState extends State<FoodBucketScreen> {
  final fontStylefoodprice =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  final fontStylefoodpricetotal =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green);

  final fontStylefoodname =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final fontStylefoodnamea =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  int _foodItemsa = 1;
  int _foodItemsb = 1;
  int _foodPricea = 10000;
  int _foodPriceb = 4000;
  int _driver = 20000;
  int _tax = 5000;
  int _totalprice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Colors.white70)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Food Bucket',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lets finish your order before it runs out',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ])),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              height: 320,
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
                          'Food Ordered',
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
                            '10.000',
                            style: fontStylefoodprice,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Text(
                              '$_foodItemsa',
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
                              width: 5,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        _incrementCountera();
                                      },
                                      icon: Icon(Icons.add)),
                                  IconButton(
                                      onPressed: () {
                                        _decrementCountera();
                                      },
                                      icon: Icon(Icons.minimize)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                                  '4.000',
                                  style: fontStylefoodprice,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Text(
                                    '$_foodItemsb',
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
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _incrementCounterb();
                                          },
                                          icon: Icon(Icons.add)),
                                      IconButton(
                                          onPressed: () {
                                            _decrementCounterb();
                                          },
                                          icon: Icon(Icons.minimize)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
            ),

            //start of detail transaksi

            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  border: Border.all(color: Colors.white70)),
              child: Column(
                children: [
                  //start food a
                  Row(
                    children: [
                      Text(
                        'Detail Transactions',
                        style: fontStylefoodname,
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Text(
                            'Seblak',
                            style: fontStylefoodnamea,
                          )
                        ]),
                        Row(
                          children: [
                            Text(
                              'IDR',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$_foodPricea',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ]),
                  //end food a
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Text(
                            'Surabi',
                            style: fontStylefoodnamea,
                          )
                        ]),
                        Row(
                          children: [
                            Text(
                              'IDR',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$_foodPriceb',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Text(
                            'Tax',
                            style: fontStylefoodnamea,
                          )
                        ]),
                        Row(
                          children: [
                            Text(
                              'IDR',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$_tax',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Text(
                            'Driver Service',
                            style: fontStylefoodnamea,
                          )
                        ]),
                        Row(
                          children: [
                            Text(
                              'IDR',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$_driver',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(children: [
                          Text(
                            'Total Price',
                            style: fontStylefoodnamea,
                          )
                        ]),
                        Row(
                          children: [
                            Text(
                              'IDR',
                              style: fontStylefoodprice,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$_totalprice',
                              style: fontStylefoodpricetotal,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                child: Text(
                  'Check Out Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _incrementCountera() {
    setState(() {
      _foodItemsa++;
      _foodPricea = _foodPricea * _foodItemsa;
      _totalprice = _foodPricea + _foodPriceb + _driver + _tax;
    });
  }

  void _decrementCountera() {
    setState(() {
      _foodItemsa--;
      _foodPricea = _foodPricea * _foodItemsa;
    });
  }

  void _incrementCounterb() {
    setState(() {
      _foodItemsb++;
      _foodPriceb = _foodPriceb * _foodItemsb;
      _totalprice = _foodPricea + _foodPriceb + _driver + _tax;
    });
  }

  void _decrementCounterb() {
    setState(() {
      _foodItemsb--;
      _foodPriceb = _foodPriceb * _foodItemsb;
    });
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons

    Widget continueButton = ElevatedButton(
      child: Text("Continue"),
      style: ElevatedButton.styleFrom(primary: Colors.green),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FoodOrder();
        }));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Transactions Succes"),
      actions: [
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
