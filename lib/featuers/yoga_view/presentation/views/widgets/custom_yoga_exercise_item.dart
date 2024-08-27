import 'package:flutter/material.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/custom_container_for_exercise_yoga.dart';

class CustomYogaExerciseItem extends StatelessWidget {
  const CustomYogaExerciseItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 2 / 1.1,
      child: Stack(
        children: [
          const CustomYogaExercisesContainer(),
          Positioned(
              right: width * 0.01,
              bottom: width * 0.08,
              child: Image.asset(Assets.imagesYoga)),
        ],
      ),
    );
  }
}
