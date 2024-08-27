import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';

class SevenDaysWiget extends StatelessWidget {
  const SevenDaysWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 12, left: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300)),
      child: Text(
        '7 days',
        style: Style.font18Medium(context),
      ),
    );
  }
}
