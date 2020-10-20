import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ui/custom_widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  List<String> photos = [
    'assets/food1.png',
    'assets/food2.jpg',
    'assets/food3.jpg',
    'assets/food4.jpg',
    'assets/food5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.7,
                    color: Color(0xFFCCE7CE),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(25.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              // filled: false,
                              // border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              // enabled: false,
                              hintText: 'Search for recipes and channels',
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 10.0, top: 15.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.orange[300],
                                style: BorderStyle.solid,
                                width: 3.0,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'POPULAR RECIPES',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'THIS WEEK',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(bottom: 15.0),
                      // ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(top: 15.0, left: 0.0),
                        height: 160.0,
                        // color: Colors.white,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            customContainer(photos[0]),
                            customContainer(photos[3]),
                            customContainer(photos[1]),
                            customContainer(photos[4]),
                            customContainer(photos[2]),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'April 28',
                  style: TextStyle(
                    letterSpacing: 0.4,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'TODAY',
                  style: TextStyle(
                    letterSpacing: 0.4,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                    height: 240,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.grey[800],
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('assets/food7.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    // height: ,
                    top: 150,
                    left: 30,
                    child: Container(
                      height: 100,
                      width: 120,
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'BEST OF THE DAY',
                            style: TextStyle(
                              letterSpacing: 0.4,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 3,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
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
        ],
      ),
    );
  }
}
