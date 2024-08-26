import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBellIconWithCircleRed extends StatelessWidget {
  const CustomBellIconWithCircleRed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(clipBehavior: Clip.none, children: [
      Icon(FontAwesomeIcons.bell),
      Positioned(
        left: 13,
        child: CircleAvatar(
          radius: 5,
          backgroundColor: Colors.red,
        ),
      ),
    ]);
  }
}
