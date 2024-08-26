import 'package:flutter/material.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_app_bar_for_main_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          CustomAppBarMainView(),
        ],
      ),
    );
  }
}
