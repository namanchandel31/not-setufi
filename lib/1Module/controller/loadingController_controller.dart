import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/view/homeScreen_view.dart';

class LoadingController extends GetxController {
  // TextEditingController otp = TextEditingController();
  // bool hasError = false;
  // RxString currentText = "".obs;

  @override
  void onInit() async {
    await Future.delayed(
      Duration(seconds: 3),
      () {
        Get.to(() => HomeScreen());
      },
    );

    super.onInit();
  }
}
