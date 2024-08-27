import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';
import 'package:moody/featuers/yoga_view/presentation/views/widgets/serven_days_widget.dart';

class CustomYogaExercisesContainer extends StatelessWidget {
  const CustomYogaExercisesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.9,
      padding: EdgeInsets.only(
          top: width * 0.035,
          bottom: width * 0.02,
          left: width * 0.05,
          right: width * 0.06),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 230, 245),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: width * 0.002,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SevenDaysWiget(),
              const SizedBox(
                height: 19,
              ),
              Text(
                'Morning Yoga',
                style: Style.font22Bold(context),
              ),
              SizedBox(
                height: width * 0.002,
              ),
              Text(
                'improve mental focus',
                style: Style.font14Medium(context),
              ),
              SizedBox(
                height: width * 0.02,
              ),
              Row(
                children: [
                  const Icon(Icons.watch_later_outlined),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '30 mins',
                    style: Style.font14Medium(context),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
