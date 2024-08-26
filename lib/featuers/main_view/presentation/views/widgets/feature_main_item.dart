import 'package:flutter/material.dart';
import 'package:moody/core/utils/imageAssets.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/main_view/presentation/views/widgets/custom_play_icon_buttom.dart';

class FeatureMainItem extends StatelessWidget {
  const FeatureMainItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(width * 0.02),
      decoration: BoxDecoration(
        color: const Color(0xffECFDF3),
        borderRadius: BorderRadius.circular(width * 0.04),
      ),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(top: width * 0.02),
              child: Text(
                'Positive vibes',
                style: Style.font18SemiBold(context)
                    .copyWith(color: const Color(0xff344054)),
              ),
            ),
            subtitle: Row(
              children: [
                SizedBox(
                  width: width * 0.4,
                  child: Text(
                    'Boost your mood with positive vibes',
                    style: Style.font18Medium(context),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: width * 0.260,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                      height: width * 0.25,
                      width: width * 0.25,
                      Assets.imagesWalkingtheDog,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CustomPlayIconButtom(),
        ],
      ),
    );
  }
}
