import 'package:flutter/material.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/main_view_body.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController _pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: Icons.home_rounded,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.window_sharp,
            title: 'Activity',
          ),
          BarItem(
            icon: Icons.calendar_today_outlined,
            title: 'Calender',
          ),
          BarItem(
            icon: Icons.person,
            title: 'Settings',
          ),
        ],
      ),
    );
  }
}

List<Widget> _listOfWidget = <Widget>[
  const MainViewBody(),
  const MainViewBody(),
  const MainViewBody(),
  const MainViewBody(),
];
