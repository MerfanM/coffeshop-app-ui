import 'package:flutter/material.dart';

class OverviewWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const OverviewWidget({this.title, this.subtitle, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xffFFF4E1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(imagePath),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            )
          ],
        )
      ],
    );
  }
}
