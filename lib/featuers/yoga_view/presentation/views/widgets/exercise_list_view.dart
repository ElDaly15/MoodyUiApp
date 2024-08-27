import 'package:flutter/material.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/custom_yoga_exercise_item.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(32, (index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: CustomYogaExerciseItem(),
          );
        }).toList(),
      ),
    );
  }
}
