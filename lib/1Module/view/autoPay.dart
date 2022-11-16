import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AutoPayScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Setup AutoPay',
          style: TextStyle(fontSize: 12.sp),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/autopay.svg').centered(),
          40.heightBox,
          Text(
            'AutoPay Setup',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: AppColors.appBlue),
          ).centered(),
          20.heightBox,
          Text(
            'Steps to E-Mandate',
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.textBlack),
          ),
          15.heightBox,
          Row(
            children: [
              SvgPicture.asset('assets/tick.svg'),
              Text(
                'Click on the below button to generate reference I’d',
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGrey),
              )
            ],
          ),
          10.heightBox,
          Row(
            children: [
              SvgPicture.asset('assets/tick.svg'),
              Text(
                'You will receive an authentication email on registered Email',
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGrey),
              )
            ],
          ),
          10.heightBox,
          Row(
            children: [
              SvgPicture.asset('assets/tick.svg'),
              Text(
                'Complete authentication process by login to your net banking',
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textGrey),
              )
            ],
          ),
          40.heightBox,
          // Add BtmButton custom widget Here --
          // Add or custom widget Here --
          TextButton(onPressed: () {}, child: Text('Try Physical Mandate'))
              .centered(),
        ],
      ).pSymmetric(h: 22)),
    );
  }
}
