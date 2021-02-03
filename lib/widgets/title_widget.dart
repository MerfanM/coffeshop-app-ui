import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 2,
          width: 16,
          color: Color(0xffE48B6C),
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
