import 'package:flutter/material.dart';
import 'package:moody/core/utils/style.dart';

class CustomPlayIconButtom extends StatelessWidget {
  const CustomPlayIconButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xff32D583),
            child: Icon(
              Icons.play_arrow,
              size: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            '10 mins',
            style: Style.font18SemiBold(context),
          ),
        ],
      ),
    );
  }
}
