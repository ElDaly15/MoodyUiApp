import 'package:flutter/material.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/status_section.dart';

import 'package:moody/featuers/yoga_view/presentation/views/widgets/yoga_app_bar.dart';

class YogaViewBody extends StatelessWidget {
  const YogaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: SizedBox(
                height: 10,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CustomYogaViewHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(child: StatusSection()),
        ],
      ),
    );
  }
}
