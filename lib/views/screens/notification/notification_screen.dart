import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        leading: Container(
          margin: const EdgeInsets.only(left: Dimensions.paddingSizeDefault),
          child: FittedBox(
            fit: BoxFit.contain,
            child: GestureDetector(
              onTap: () {
                Get.back(); // Corrected from Get.back
              },
              child: SizedBox(
                height: 32.h,
                width: 32.w,
                child: SvgPicture.asset(
                  AppIcons.back_arrow,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: const CustomText(
          text: AppConstants.notification,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
          color: AppColors.black500,
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraLarge),
        child: ListView(
          children: [
            SizedBox(height: 16.h,),
            Notification(
              notificationTitle: AppConstants.notificationTitle1,
              notificationTime: AppConstants.notificationTime1,
            ),
            Notification(
              notificationTitle: AppConstants.notificationTitle2,
              notificationTime: AppConstants.notificationTime2,
            )
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  String? notificationTitle;
  String? notificationTime;

  Notification({this.notificationTime, this.notificationTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      height: 72.h,
      width: 342.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(AppIcons.notification),
          Container(
            margin: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: CustomText(
                    text: AppConstants.notificationTime1,
                    fontsize: Dimensions.fontSizeLarge.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: CustomText(
                    text: AppConstants.notificationTime2,
                    fontsize: Dimensions.fontSizeSmall.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
