import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/controller/signupTwo_controller.dart';
import 'package:setufi/1Module/view/login_view.dart';
import 'package:setufi/1Module/view/otp_view.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupTwoScreen extends GetView {
  SignupTwoScreen({Key? key}) : super(key: key);

  final _controller = Get.put(SignupTwoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBlue,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              10.h.heightBox,
              const Text(
                'Sign Up',
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
                          'Name',
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: AppColors.bgBlue, width: 1)),
                          hintText: 'Enter Name'),
                    ).h(40),
                    10.heightBox,
                    Row(
                      children: [
                        const Text(
                          'Mobile No.',
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: AppColors.bgBlue, width: 1)),
                          hintText: 'Enter Mobile Number'),
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
                        const Text(
                          'Password must be atleast 8 characters',
                          style: TextStyle(
                              color: AppColors.lightGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ).objectBottomRight(),

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
                    10.heightBox,
                    Row(
                      children: [
                        const Text(
                          'Refferal Code (Optional)',
                          style: TextStyle(
                              color: AppColors.textGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        // const Text(
                        //   '*',
                        //   style: TextStyle(
                        //       color: AppColors.appRed,
                        //       fontWeight: FontWeight.w600,
                        //       fontSize: 20),
                        // ),

                        // SvgPicture.asset('asset')
                      ],
                    ),
                    4.heightBox,
                    const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 0, right: 12, left: 12, bottom: 0),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: AppColors.bgBlue, width: 1)),
                          hintText: 'Enter Code'),
                    ).h(40),
                    24.heightBox,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() => Checkbox(
                            value: _controller.isChecked.value,
                            side: BorderSide(
                              width: 1.5,
                            ),
                            fillColor:
                                MaterialStateProperty.all(AppColors.appBlue),
                            onChanged: (bool? value) {
                              _controller.isChecked.value = value as bool;
                            })).w(30).h(20),
                        RichText(
                          text: TextSpan(
                            text:
                                'By Clicking this check box, you agree to your',
                            style: TextStyle(
                                color: AppColors.textGrey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                            children: [
                              TextSpan(
                                  text: ' Terms & Conditions',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.appBlue)),
                            ],
                          ),
                        ).flexible()
                      ],
                    ),
                    100.heightBox,
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
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.appBlue),
                          minimumSize:
                              MaterialStateProperty.all(Size(80.w, 45))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an Account?'),
                        TextButton(
                            onPressed: () {
                              Get.to(() => LoginScreen());
                            },
                            child: Text('Log In',
                                style: TextStyle(color: AppColors.appBlue)))
                      ],
                    )
                  ],
                ).pSymmetric(h: 22),
              ).expand()
            ],
          ).h(96.h),
        ),
      ),
    );
  }
}
