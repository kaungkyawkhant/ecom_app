import 'package:ecomapp/Views/loginpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  static const String id = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 10.0,
          ),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          hintText: 'Search Product',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 40.0,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.camera_alt),
                            onPressed: () {
                              //open phone camera app
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.only(left: 0.0, right: 0.0),
                    onPressed: () {},
                    child: Icon(
                      Icons.account_balance_wallet,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.all(10.0),
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    child: Form(
                      key: _key,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Simple shopping Easy delivery',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image(
                                  image: AssetImage('assets/images/m1.jpeg'),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'T-Shirt',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Price : 10 \$',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                                Image(
                                  image: AssetImage('assets/images/m2.jpg'),
//                                  height: 235.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      'T-Shirt',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      'Price : 15 \$',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
