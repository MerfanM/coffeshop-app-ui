import 'dart:ui';

import 'package:coffee_app/widgets/overview_widget.dart';
import 'package:coffee_app/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 424,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 310,
                      height: 424,
                      decoration: BoxDecoration(
                          color: Color(0xffF5F0E6),
                          image: DecorationImage(
                              image: AssetImage("assets/lines.png"))),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(40, 60, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(Icons.arrow_back_ios_rounded,
                                        size: 20)),
                                SizedBox(height: 20),
                                Text(
                                  "Indonesia",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Kapal Air",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xffF5C168),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "Robusta Gold",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: 25),
                                Text(
                                  "\$6.5",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            child: Hero(
                                tag: "kapal",
                                child: Image.asset("assets/pocket-kapal.png")),
                            bottom: -70,
                            right: -90,
                          ),
                          Positioned(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              decoration: BoxDecoration(
                                  color: Color(0xffEC5E4F),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  Text(
                                    "Add",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Image.asset("assets/add-to-cart.png"),
                                ],
                              ),
                            ),
                            bottom: -30,
                            left: 40,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 310,
                      child: Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.share_outlined),
                            SizedBox(height: 40),
                            Icon(Icons.favorite_border_rounded),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                child: Column(
                  children: [
                    TitleWidget(title: "Overview"),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        OverviewWidget(
                          title: "1100-1650m",
                          subtitle: "Altitude",
                          imagePath: "assets/subject1.png",
                        ),
                        SizedBox(width: 30),
                        OverviewWidget(
                          title: "Washed",
                          subtitle: "Processing",
                          imagePath: "assets/subject2.png",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        OverviewWidget(
                          title: "Parongpong",
                          subtitle: "Location",
                          imagePath: "assets/subject3.png",
                        ),
                        SizedBox(width: 30),
                        OverviewWidget(
                          title: "SLN9",
                          subtitle: "Varietal",
                          imagePath: "assets/subject5.png",
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    TitleWidget(title: "Description"),
                    SizedBox(height: 20),
                    Text(
                      "This whole choffee bean has hazelnut, honey, and grapes taste siap lah kumaha maneh weh nya nu penting ieu kaeusian paragraphna contoh aja biar kalo panjang keliatan.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
