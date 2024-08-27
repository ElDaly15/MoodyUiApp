import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomExerciseSectionHeaderForYoga extends StatelessWidget {
  const CustomExerciseSectionHeaderForYoga({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Workout Programs',
      style: Style.font22Bold(context),
    );
  }
}
