import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common/appColors.dart';

class HomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Icon(Icons.search),
        Icon(
          Icons.bookmark_outline,
          color: AppColors.textBlack,
        ),
        10.widthBox,
        Icon(Icons.shopping_cart_outlined, color: AppColors.textBlack),
        10.widthBox
      ]),
    );
  }
}
