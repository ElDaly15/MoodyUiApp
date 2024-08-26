import 'package:flutter/material.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/welcome_start_section_status_item.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hello, ',
              style: Style.font22Medium(context)
                  .copyWith(color: const Color(0xff371B34)),
            ),
            Text(
              'Sara Rose',
              style: Style.font22Bold(context)
                  .copyWith(color: const Color(0xff371B34)),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'How are you feeling today ?',
          style: Style.font22Medium(context)
              .copyWith(color: const Color(0xff371B34)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          children: [
            WelcomeStatusUserItem(
              image: Assets.imagesLove,
            ),
            Spacer(),
            WelcomeStatusUserItem(
              image: Assets.imagesHappy,
            ),
            Spacer(),
            WelcomeStatusUserItem(
              image: Assets.imagesOkay,
            ),
            Spacer(),
            WelcomeStatusUserItem(
              image: Assets.imagesSad,
            ),
          ],
        ),
      ],
    );
  }
}
