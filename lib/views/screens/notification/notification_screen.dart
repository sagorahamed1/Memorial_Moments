import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/utils/icons.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// ----------- i have to some change this code tommoro------------->
        backgroundColor: AppColors.bgColors,
        leading: FittedBox(
            fit: BoxFit.contain,
            child: SvgPicture.asset(appIcons.back_arrow,width: 32.w,height: 31.h,)),
        centerTitle: true,
        title: CustomText(
          text: AppConstants.notification,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
          color: AppColors.black500,
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
