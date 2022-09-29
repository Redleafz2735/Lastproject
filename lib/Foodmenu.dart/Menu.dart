import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  @override
  State<Menu> createState() => _MenuState();
}

List<List<dynamic>> foodLists = [
  [
    "https://data.thefeedfeed.com/recommended/post_449191.jpg",
    "Southwest Turkey Burgers With Mango-Chili Guacamole",
    280
  ],
  [
    "https://data.thefeedfeed.com/static/2020/01/27/15610544705d0bcd0619eb0.jpg",
    "buffalo-style chickpeas for topping salads, bowls,",
    350
  ],
  [
    "https://data.thefeedfeed.com/static/2020/08/17/15960748725f222b782e388.jpg",
    "Blackened Shrimp Salad With Avocado, Corn And Tomatoes",
    150
  ],
  [
    "https://data.thefeedfeed.com/static/2020/05/12/15892868045eba9794435f0.jpg",
    "Butternut Squash And kale Lasagna, Butternut",
    290
  ],
];

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          " FOOD MENU",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: foodLists.length,
        itemBuilder: (_, index) {
          return Card(
            //          elevation: 0,

            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        foodLists[index][0],
                        fit: BoxFit.cover,
                        width: 200,
                      ),
                      Expanded(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${foodLists[index][1]}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${foodLists[index][2]} ฿",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Chip(
                      backgroundColor: Colors.orange,
                      label: Text(
                        "Order Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
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
