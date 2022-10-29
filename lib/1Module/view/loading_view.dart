import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/controller/loadingController_controller.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoadingScreen extends GetView {
  LoadingScreen({Key? key}) : super(key: key);

  final _controller = Get.put(LoadingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBlue,
        body: Column(
          children: [
            6.h.heightBox,
            const Text(
              'Hold Tight We Are Getting You Back on Board',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.white,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w600,
                  fontSize: 26),
            ).centered().pSymmetric(h: 30),
            // 4.heightBox,
            // Text(
            //   'We sent your code to +91908564*** \n This code will expired in 09:30 Minutes',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: AppColors.white.withOpacity(0.5),
            //       letterSpacing: 1,
            //       fontWeight: FontWeight.w400,
            //       fontSize: 16),
            // ).centered().paddingSymmetric(horizontal: 40),
            6.h.heightBox,
            Container(
              width: 100.w,
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(
                children: [
                  14.h.heightBox,
                  SvgPicture.asset('assets/loading.svg'),
                  // 100.heightBox,
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Get.to(() => OtpLoadingScreen());
                  //   },
                  //   child: Text(
                  //     'Continue',
                  //     style: TextStyle(
                  //         fontWeight: FontWeight.w600, fontSize: 14.sp),
                  //   ),
                  //   style: ButtonStyle(
                  //       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  //           borderRadius:
                  //               BorderRadius.all(Radius.circular(10)))),
                  //       backgroundColor:
                  //           MaterialStateProperty.all(AppColors.appBlue),
                  //       minimumSize: MaterialStateProperty.all(Size(80.w, 45))),
                  // ),
                  // TextButton(
                  //     onPressed: () {},
                  //     child: Text('Resend OTP',
                  //         style: TextStyle(color: AppColors.textGrey)))
                ],
              ).pSymmetric(h: 22),
            ).expand()
          ],
        ),
      ),
    );
  }
}
