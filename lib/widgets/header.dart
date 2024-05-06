import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/DELWhite.jpg',
          width: 300,
          height: 120,
        ),
        const SizedBox(height: 30),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
