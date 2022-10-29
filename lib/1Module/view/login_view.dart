import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/controller/login_controller.dart';
import 'package:setufi/1Module/controller/signupTwo_controller.dart';
import 'package:setufi/1Module/view/otp_view.dart';
import 'package:setufi/1Module/view/signup_view.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends GetView {
  LoginScreen({Key? key}) : super(key: key);

  final _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBlue,
        body: Column(
          children: [
            10.h.heightBox,
            const Text(
              'Let\'s Get Started',
              style: TextStyle(
                  color: AppColors.white,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w600,
                  fontSize: 26),
            ).centered(),
            6.h.heightBox,
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(40))),
              child: Column(
                children: [
                  28.heightBox,
                  Row(
                    children: [
                      const Text(
                        'Enter your Email ID',
                        style: TextStyle(
                            color: AppColors.textGrey,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      const Text(
                        '*',
                        style: TextStyle(
                            color: AppColors.appRed,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),

                      // SvgPicture.asset('asset')
                    ],
                  ),
                  4.heightBox,
                  const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 0, right: 12, left: 12, bottom: 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: AppColors.bgBlue, width: 1)),
                        hintText: 'Lorium@Ipusm.com'),
                  ).h(40),
                  10.heightBox,
                  Row(
                    children: [
                      const Text(
                        'Password',
                        style: TextStyle(
                            color: AppColors.textGrey,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      const Text(
                        '*',
                        style: TextStyle(
                            color: AppColors.appRed,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Spacer(),
                      // const Text(
                      //   'Password must be atleast 8 characters',
                      //   style: TextStyle(
                      //       color: AppColors.lightGrey,
                      //       fontWeight: FontWeight.w500,
                      //       fontSize: 12),
                      // ).objectBottomRight(),

                      // SvgPicture.asset('asset')
                    ],
                  ),
                  4.heightBox,
                  Obx(() => TextField(
                        obscureText: _controller.isVisible.value,
                        decoration: InputDecoration(
                            suffixIconConstraints:
                                BoxConstraints(minHeight: 18, maxHeight: 18
                                    // minWidth: 14,
                                    // maxHeight: 18,
                                    // maxWidth: 18,
                                    ),
                            suffixIcon: _controller.isVisible.value
                                ? SvgPicture.asset(
                                    'assets/eye.svg',
                                  ).pOnly(right: 8).onTap(() {
                                    _controller.isVisible.value = false;
                                  })
                                : SvgPicture.asset(
                                    'assets/eye.svg',
                                    color: AppColors.appBlue,
                                  ).pOnly(right: 8).onTap(() {
                                    _controller.isVisible.value = true;
                                  }),
                            contentPadding: EdgeInsets.only(
                                top: 0, right: 12, left: 12, bottom: 0),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: AppColors.bgBlue, width: 1)),
                            hintText: 'Enter Password'),
                      )).h(40),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero)),
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(color: AppColors.validGreen),
                      )).objectTopLeft().h(26),
                  50.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => OtpVerificationScreen());
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an Account?'),
                      TextButton(
                          onPressed: () {
                            Get.to(() => SignupScreen());
                          },
                          child: Text('Create Account',
                              style: TextStyle(color: AppColors.appBlue)))
                    ],
                  )
                ],
              ).pSymmetric(h: 22),
            ).expand()
          ],
        ),
      ),
    );
  }
}
