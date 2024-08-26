import 'package:flutter/material.dart';

class WelcomeStatusUserItem extends StatelessWidget {
  const WelcomeStatusUserItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: const Color(0xffE4E7EC),
      child: CircleAvatar(
        radius: 23,
        backgroundColor: const Color(0xffE4E7EC),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
