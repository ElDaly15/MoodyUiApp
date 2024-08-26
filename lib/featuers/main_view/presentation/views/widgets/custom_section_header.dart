import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_see_more_widget.dart';

class CustomSectionHeader extends StatelessWidget {
  const CustomSectionHeader({super.key, required this.headerName});

  final String headerName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headerName,
          style: Style.font22Bold(context),
        ),
        const Spacer(),
        const CustomSeeMoreWidget(),
      ],
    );
  }
}
