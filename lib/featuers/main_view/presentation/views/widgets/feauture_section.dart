import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_play_icon_buttom.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_section_header.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/feature_main_item.dart';

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
        FeatureMainItem(),
      ],
    );
  }
}
