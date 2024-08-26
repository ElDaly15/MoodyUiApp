import 'package:flutter/material.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_app_bar_for_main_view.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/feauture_section.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/welcome_section.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: ListView(
        children: const [
          SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          CustomAppBarMainView(),
          SizedBox(
            height: 25,
          ),
          WelcomeSection(),
          SizedBox(
            height: 40,
          ),
          FeatureSection(),
        ],
      ),
    );
  }
}
