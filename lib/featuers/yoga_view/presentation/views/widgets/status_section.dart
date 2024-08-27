import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'status_section_item.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 230, 245),
          borderRadius: BorderRadius.circular(8)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StatusSectionItem(
            iconData: FontAwesomeIcons.heart,
            title: 'Heart Rate',
            subtitle: '81 BPM',
          ),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              color: Color(0xffD9D9D9),
              thickness: 1,
            ),
          ),
          StatusSectionItem(
              iconData: FontAwesomeIcons.list,
              title: 'To-Do',
              subtitle: '32,5 %'),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              color: Color(0xffD9D9D9),
              thickness: 1,
            ),
          ),
          StatusSectionItem(
            iconData: FontAwesomeIcons.fire,
            title: 'Calo',
            subtitle: '1000 Cal',
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
