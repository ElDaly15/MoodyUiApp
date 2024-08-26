import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/feature_main_item.dart';

class PageBuilderForFeatureMainItem extends StatefulWidget {
  const PageBuilderForFeatureMainItem({super.key});

  @override
  State<PageBuilderForFeatureMainItem> createState() =>
      _PageBuilderForFeatureMainItemState();
}

class _PageBuilderForFeatureMainItemState
    extends State<PageBuilderForFeatureMainItem> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: width * 0.59,
          child: PageView.builder(
            onPageChanged: (page) {
              currentIndex = page;
              setState(() {});
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: FeatureMainItem(),
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DotsIndicator(
          dotsCount: 5,
          position: currentIndex,
          decorator: DotsDecorator(
            activeColor: Colors.green,
            color: Colors.green.shade100,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}
