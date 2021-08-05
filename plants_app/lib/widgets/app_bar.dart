import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String date;
  final IconData icon;
  final Color color;

  const CustomAppBar({
    required this.color,
    required this.title,
    required this.date,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Mango',
                  color: color,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(blurRadius: 8, color: Colors.black.withOpacity(.08))
                ]),
            child: Icon(
              icon,
              size: 20,
              color: color,
            ))
      ],
    );
  }
}
