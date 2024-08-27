import 'package:flutter/material.dart';

import 'package:moody/featuers/yoga_view/presentation/views/widgets/custom_exercise_section_header.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/exercise_list_view.dart';

class YogaExerciseSection extends StatefulWidget {
  const YogaExerciseSection({super.key});

  @override
  State<YogaExerciseSection> createState() => _YogaExerciseSectionState();
}

class _YogaExerciseSectionState extends State<YogaExerciseSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomExerciseSectionHeaderForYoga(),
        const SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TabBar(
                tabAlignment: TabAlignment.start,
                textScaler: const TextScaler.linear(1.4),
                controller: _tabController,
                labelColor: const Color(0xff363F72),
                unselectedLabelColor: Colors.grey,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Color(0xff363F72),
                    width: 2.0,
                  ),
                ),
                isScrollable: true,
                tabs: const [
                  Tab(text: "All Type"),
                  Tab(text: "Full Body"),
                  Tab(text: "Upper"),
                  Tab(text: "Lower"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16), // Adjust spacing if needed

        SingleChildScrollView(
          child: SizedBox(
            height: 600,
            child: TabBarView(
              controller: _tabController,
              children: const [
                ExerciseListView(), // Use a new widget instead of SliverListToExerciseItem
                ExerciseListView(),
                ExerciseListView(),
                ExerciseListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
