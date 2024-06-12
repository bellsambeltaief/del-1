import 'package:deloitte/widgets/box.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            return const Box(
              icon: 'assets/icons/settings.svg',
              text: 'Update personal profile information',
              title: 'Settings',
            );
          },
        ),
      ),
    );
  }
}
