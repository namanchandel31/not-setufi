import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:setufi/common/appColors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Explore',
            style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.textBlack,
                fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Icon(
              Icons.bookmark_outline,
              color: AppColors.textBlack,
            ),
            10.widthBox,
            Icon(Icons.shopping_cart_outlined, color: AppColors.textBlack),
            10.widthBox
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            10.heightBox,
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.textGrey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                hintText: 'Search',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
              ),
            ).h(50),
            15.heightBox,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) => Card(
                      elevation: 0.5,
                      child: ListTile(
                        dense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        leading: CircleAvatar(
                            radius: 30,
                            // child: SvgPicture.asset('assetName'),
                            child: Icon(
                              Icons.category_rounded,
                              color: Color(0xffFFC36A),
                            ),
                            backgroundColor: Color(0xffFFF5E7)),
                        title: Text(
                          'Data',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                            'Loreum ipsum Loreum ipsum Loreum ipsum Loreum ipsum Loreum ipsum '),
                        trailing: Icon(Icons.arrow_forward_ios, size: 12),
                      ),
                    ))
          ],
        ).paddingSymmetric(horizontal: 16),
      )),
    );
  }
}
