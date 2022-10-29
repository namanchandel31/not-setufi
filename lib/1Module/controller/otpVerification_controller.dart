import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/view/homeScreen_view.dart';

class OtpVerificationController extends GetxController {
  TextEditingController otp = TextEditingController();
  bool hasError = false;
  RxString currentText = "".obs;
}
