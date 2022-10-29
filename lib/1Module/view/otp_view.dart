import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/controller/otpVerification_controller.dart';
import 'package:setufi/1Module/view/loading_view.dart';

import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends GetView {
  OtpVerificationScreen({Key? key}) : super(key: key);

  final _controller = Get.put(OtpVerificationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBlue,
        body: Column(
          children: [
            6.h.heightBox,
            const Text(
              'OTP Verification',
              style: TextStyle(
                  color: AppColors.white,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w600,
                  fontSize: 26),
            ).centered(),
            4.heightBox,
            Text(
              'We sent your code to +91908564*** \n This code will expired in 09:30 Minutes',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.white.withOpacity(0.5),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ).centered().paddingSymmetric(horizontal: 40),
            6.h.heightBox,
            Container(
              width: 100.w,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(
                children: [
                  10.h.heightBox,
                  PinCodeTextField(
                    appContext: context,

                    pastedTextStyle: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    enablePinAutofill: true,

                    obscureText: false,

                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 4) {
                        return "Invalid OTP";
                      } else {
                        return null;
                      }
                    },

                    pinTheme: PinTheme(
                      activeColor: AppColors.appBlue,
                      inactiveColor: AppColors.textGrey,
                      borderWidth: 1.5,
                      selectedColor: AppColors.appBlue,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 60,
                      fieldWidth: 60,
                      activeFillColor: Colors.white,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: false,
                    // errorAnimationController: errorController,
                    controller: _controller.otp,
                    keyboardType: TextInputType.number,
                    // boxShadows: const [
                    //   BoxShadow(
                    //     offset: Offset(0, 1),
                    //     color: Colors.black12,
                    //     blurRadius: 10,
                    //   )
                    // ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);

                      _controller.currentText.value = value;
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ).w(80.w),
                  100.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => LoadingScreen());
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.sp),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.appBlue),
                        minimumSize: MaterialStateProperty.all(Size(80.w, 45))),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Resend OTP',
                          style: TextStyle(color: AppColors.textGrey)))
                ],
              ).pSymmetric(h: 22),
            ).expand()
          ],
        ),
      ),
    );
  }
}
