import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_bell_icon_with_red_circle.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/custom_welcome_to_header_of_yoga.dart';

class CustomYogaViewHeader extends StatelessWidget {
  const CustomYogaViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(Assets.imagesGirl),
        ),
        const SizedBox(
          width: 10,
        ),
        const CustomWelcomeTextToYogaSectinoHeader(),
        const Spacer(),
        const CustomBellIconWithCircleRed(),
      ],
    );
  }
}
