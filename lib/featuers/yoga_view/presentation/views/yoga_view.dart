import 'package:flutter/material.dart';

import 'widgets/yoga_view_body.dart';

class YogaView extends StatelessWidget {
  const YogaView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: YogaViewBody(),
    );
  }
}
