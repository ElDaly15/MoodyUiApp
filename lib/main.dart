import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moody/featuers/main_view/presentation/views/main_view.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MoodyApp()));
}

class MoodyApp extends StatelessWidget {
  const MoodyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const MainView(),
    );
  }
}
