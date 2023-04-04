import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pre_test/view/splashview.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        home: Splash(), debugShowCheckedModeBanner: false);
  }
}
