import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moody/featuers/main_view/presentation/views/main_view.dart';

void main() {
  runApp(const MoodyApp());
}

class MoodyApp extends StatelessWidget {
  const MoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
