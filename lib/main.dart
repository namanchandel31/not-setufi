import 'package:flutter/material.dart';
import 'package:setufi/1Module/view/explore.dart';
import 'package:setufi/1Module/view/onboarding_view.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
        ),
        home: ExploreScreen(),
      ),
    );
  }
}
