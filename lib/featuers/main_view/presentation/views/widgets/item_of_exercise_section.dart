import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';

class CustomItemForExerciseSection extends StatelessWidget {
  const CustomItemForExerciseSection(
      {super.key,
      required this.colorId,
      required this.textItem,
      required this.image});
  final int colorId;
  final String textItem;
  final String image;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: width * 0.39,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(colorId), borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Image.asset(
              image,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              textItem,
              style: Style.font14Bold(context),
            )
          ],
        ),
      ),
    );
  }
}
