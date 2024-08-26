import 'package:flutter/material.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/item_of_exercise_section.dart';

class ExcersiseAllItems extends StatelessWidget {
  const ExcersiseAllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomItemForExerciseSection(
              textItem: 'Relaxtion',
              colorId: 0xffF9F5FF,
              image: Assets.imagesRelax,
            ),
            CustomItemForExerciseSection(
              textItem: 'Meditation',
              colorId: 0xffFDF2FA,
              image: Assets.imagesMeditation,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomItemForExerciseSection(
              textItem: 'Breathing',
              colorId: 0xffFFFAF5,
              image: Assets.imagesBreathing,
            ),
            CustomItemForExerciseSection(
              textItem: 'Yoga',
              colorId: 0xffF0F9FF,
              image: Assets.imagesYogaFrame,
            ),
          ],
        ),
      ],
    );
  }
}
