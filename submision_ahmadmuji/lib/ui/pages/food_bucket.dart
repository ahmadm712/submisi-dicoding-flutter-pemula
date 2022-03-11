import 'package:flutter/material.dart';
import 'package:submision_ahmadmuji/models/cart.dart';
import 'package:submision_ahmadmuji/ui/pages/food_order.dart';
import 'package:submision_ahmadmuji/ui/style/style.dart';

class FoodBucketScreen extends StatefulWidget {
  @override
  _FoodBucketScreenState createState() => _FoodBucketScreenState();
}

class _FoodBucketScreenState extends State<FoodBucketScreen> {
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
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 24,
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
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
                                'Cart',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
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
            decoration: BoxDecoration(
              color: Colors.white60,
              border: Border.all(
                color: Colors.white70,
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 16),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: colorPrimary.withOpacity(0.2),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  color: Colors.grey.withOpacity(0.045),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          child: Image.asset(
                                            '${cart[index].imageAsset}',
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${cart[index].name}',
                                              style: fontStylefoodname,
                                              maxLines: 1,
                                              overflow: TextOverflow.fade,
                                            ),
                                            Text(
                                              '${cart[index].foodPrice}',
                                              style: fontStylefoodprice,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              _incrementCounter();
                                            },
                                            icon: Icon(Icons.add)),
                                        IconButton(
                                            onPressed: () {
                                              _decrementCounter();
                                            },
                                            icon: Icon(Icons.minimize)),
                                      ],
                                    ),
                                  ),
                                ]),
                          );
                        }),
                  ),
                ]),
          ),

          ///start of detail transaksi

          Container(
            padding: EdgeInsets.all(20),
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white60,
                border: Border.all(color: Colors.white70)),
            child: Column(
              children: [
                ///start food a
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

                ///end food a
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
          Container(
            height: 46,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 40, bottom: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: colorPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              onPressed: () {
                showAlertDialog(context);
                setState(() {
                  cart.clear();
                });
              },
              child: Text(
                'Check Out Now',
                style: fontButtonText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _foodItemsa++;
      _foodPricea = _foodPricea * _foodItemsa;
      _totalprice = _foodPricea + _foodPriceb + _driver + _tax;
    });
  }

  void _decrementCounter() {
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
    /// set up the buttons
    Widget continueButton = ElevatedButton(
      child: Text("Continue"),
      style: ElevatedButton.styleFrom(
          primary: colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FoodOrder();
        }));
      },
    );

    /// set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Transactions Succes"),
      actions: [
        continueButton,
      ],
    );

    /// show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
