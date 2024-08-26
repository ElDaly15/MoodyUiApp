import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';

class CustomSeeMoreWidget extends StatelessWidget {
  const CustomSeeMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'See more',
          style: Style.font18Bold(context)
              .copyWith(color: const Color(0xff419A75)),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xff419A75),
          size: 16,
        ),
      ],
    );
  }
}
