import 'package:flutter/material.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_page_builder_with_dot_indicator_for_feature_item.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_section_header.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSectionHeader(
          headerName: 'Feature',
        ),
        SizedBox(
          height: 15,
        ),
        PageBuilderForFeatureMainItem(),
      ],
    );
  }
}
