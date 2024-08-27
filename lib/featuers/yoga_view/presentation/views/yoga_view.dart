import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/library.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/custom_exercise_section_header.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/custom_yoga_exercise_item.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/status_section.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/yoga_app_bar.dart';

class YogaView extends StatefulWidget {
  const YogaView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _YogaViewState createState() => _YogaViewState();
}

class _YogaViewState extends State<YogaView> {
  final int pageCount = 4;
  final PageController _controller = PageController(initialPage: 1);
  final CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  void initState() {
    super.initState();
  }

  Widget getTabbarChild(BuildContext context, int index) {
    return TabBarItem(
      index: index,
      transform: ColorsTransform(
        highlightColor: const Color(0xff363F72),
        normalColor: Colors.grey,
        builder: (context, color) {
          return Container(
            padding: const EdgeInsets.all(2),
            alignment: Alignment.center,
            constraints: const BoxConstraints(minWidth: 100, minHeight: 29),
            child: (Text(
              index == 0
                  ? 'All Type'
                  : index == 1
                      ? 'Full Body'
                      : index == 3
                          ? 'Upper'
                          : 'Lower',
              style: Style.font18SemiBold(context).copyWith(color: color),
            )),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(
              child: SizedBox(
                height: 10,
              ),
            ),
            const CustomYogaViewHeader(),
            const SizedBox(
              height: 20,
            ),
            const StatusSection(),
            const SizedBox(
              height: 30,
            ),
            const CustomExerciseSectionHeaderForYoga(),
            const SizedBox(
              height: 20,
            ),
            CustomTabBar(
              tabBarController: _tabBarController,
              height: 35,
              itemCount: pageCount,
              builder: getTabbarChild,
              indicator: LinearIndicator(
                  color: const Color(0xff363F72), bottom: 2, height: 3),
              pageController: _controller,
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: pageCount,
                itemBuilder: (context, index) {
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: CustomYogaExerciseItem(),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
