import 'package:flutter/material.dart';

import '../theme.dart';

class MenuItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  MenuItem({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: kWhiteColor,
          ),
          child: Center(
            child: Image.asset(
              imageUrl,
              width: 34,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: blackTextStyle,
        ),
      ],
    );
  }
}
