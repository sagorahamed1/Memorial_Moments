import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  String? notificationTitle;
  String? notificationTime;

  NotificationWidget({this.notificationTime, this.notificationTitle});

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
