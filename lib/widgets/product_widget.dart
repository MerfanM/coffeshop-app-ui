import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productImage;
  final String country;
  final String name;
  final String shape;
  final String price;
  final String heroTag;

  const ProductWidget(
      {this.productImage,
      this.country,
      this.name,
      this.shape,
      this.price,
      this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                color: Color(0xffF5F0E6),
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
            child: Row(
              children: [
                Image(image: AssetImage(shape)),
                SizedBox(width: 50),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(country),
                      SizedBox(height: 8),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "\$$price",
                        style: TextStyle(
                          color: Color(0xffE48B6C),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Image.asset("assets/Rectangle.png"),
            right: 0,
            bottom: 0,
          ),
          Positioned(
            child: Icon(Icons.add, color: Colors.white),
            right: 5,
            bottom: 5,
          ),
          Positioned(
            child: Hero(
              tag: heroTag,
              child: Image.asset(productImage),
            ),
            left: 20,
            top: -25,
          ),
        ],
      ),
    );
  }
}
