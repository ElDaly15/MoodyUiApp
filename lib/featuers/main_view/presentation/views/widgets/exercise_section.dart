import 'package:flutter/material.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_section_header.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/exercise_all_items.dart';

class ExerciseSection extends StatelessWidget {
  const ExerciseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionHeader(
          headerName: 'Exercise',
        ),
        SizedBox(
          height: 20,
        ),
        ExcersiseAllItems(),
      ],
    );
  }
}
