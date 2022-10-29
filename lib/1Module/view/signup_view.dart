import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setufi/1Module/controller/signup_controller.dart';
import 'package:setufi/1Module/view/login_view.dart';
import 'package:setufi/1Module/view/signupTwo_view.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupScreen extends GetView {
  SignupScreen({Key? key}) : super(key: key);

  final _controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBlue,
        body: Column(
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
                  const Text(
                    'Enter your Email ID',
                    style: TextStyle(
                        color: AppColors.textGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ).objectCenterLeft(),
                  10.heightBox,
                  const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            top: 0, right: 12, left: 12, bottom: 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: AppColors.bgBlue, width: 1)),
                        hintText: 'Lorium@Ipsum.com'),
                  ).h(40),
                  100.heightBox,
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => SignupTwoScreen());
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
        ),
      ),
    );
  }
}
