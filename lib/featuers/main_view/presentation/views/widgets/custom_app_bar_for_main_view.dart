import 'package:flutter/widgets.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_bell_icon_with_red_circle.dart';

class CustomAppBarMainView extends StatelessWidget {
  const CustomAppBarMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.imagesMoodyLogo),
        const SizedBox(
          width: 12,
        ),
        Text(
          'Moody',
          style: Style.font24Bold(context),
        ),
        const Spacer(),
        const CustomBellIconWithCircleRed(),
      ],
    );
  }
}
