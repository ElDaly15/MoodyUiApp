import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';

class StatusSectionItem extends StatelessWidget {
  const StatusSectionItem(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtitle});

  final IconData iconData;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              iconData,
              size: 16,
              color: const Color(0xff717BBC),
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              title,
              style: Style.font14Medium(context),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: Style.font18Bold(context),
        ),
      ],
    );
  }
}
