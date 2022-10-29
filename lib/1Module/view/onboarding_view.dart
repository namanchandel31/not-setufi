import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:setufi/1Module/controller/onboadring_controller.dart';
import 'package:setufi/1Module/view/signup_view.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingScreen extends GetView {
  final _controller = Get.put(OnboardingController());
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        2.h.heightBox,
        SvgPicture.asset('assets/setufi.svg').centered(),
        // 1.h.heightBox,
        PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              _controller.currentIndex.value = value;
            },
            children: [
              Column(
                children: [
                  SvgPicture.asset('assets/onboarding01.svg').h(480),
                  1.h.heightBox,
                  const Text(
                          'Grow your Business with Setufi Your Cashflow Management System',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.textGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 22))
                      .paddingSymmetric(horizontal: 32),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/onboarding02.svg').h(480),
                  1.h.heightBox,
                  const Text(
                    'Always know what\'s next',
                    style: TextStyle(
                        color: AppColors.textGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ).paddingSymmetric(horizontal: 32),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset('assets/onboarding03.svg').h(480),
                  1.h.heightBox,
                  const Text('Get more done in seconds',
                          style: TextStyle(
                              color: AppColors.textGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 22))
                      .paddingSymmetric(horizontal: 32),
                ],
              ),
            ]).h(66.h),
        2.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => SignupScreen());
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(220, 45)),
                backgroundColor: MaterialStateProperty.all(AppColors.appBlue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
              ),
              child: Text('Let\'s Get Started',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white)),
            ),
            SvgPicture.asset('assets/wth.svg'),
          ],
        )
      ]),
    ));
  }
}
