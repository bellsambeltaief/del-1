import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Box extends StatelessWidget {
  final String icon;
  final String title;
  final String text;
  const Box({
    super.key,
    required this.icon,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          height: 50,
          width: 50,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
