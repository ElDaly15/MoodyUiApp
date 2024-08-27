import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';

class CustomWelcomeTextToYogaSectinoHeader extends StatelessWidget {
  const CustomWelcomeTextToYogaSectinoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, Sara',
          style: Style.font18Medium(context),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Ready to workout?',
          style: Style.font18Bold(context),
        ),
      ],
    );
  }
}
