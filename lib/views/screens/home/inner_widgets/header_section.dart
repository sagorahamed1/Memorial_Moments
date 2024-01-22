import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

///--------------------------this is header section---------------------->
Container headerSection() {
  return Container(
    padding: EdgeInsets.only(right: 16, left: 16),
    height: 40.h,
    width: 342.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.sw),
      color: AppColors.white,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: AppConstants.all,
          color: AppColors.blue500,
          fontsize: Dimensions.fontSizeDefault,
          fontWeight: FontWeight.w500,
        ),
        CustomText(
          text: AppConstants.individual,
          color: AppColors.black500,
          fontsize: Dimensions.fontSizeDefault,
          fontWeight: FontWeight.w500,
        ),
        CustomText(
          text: AppConstants.veteran,
          color: AppColors.black500,
          fontsize: Dimensions.fontSizeDefault,
          fontWeight: FontWeight.w500,
        ),
        CustomText(
          text: AppConstants.pets,
          color: AppColors.black500,
          fontsize: Dimensions.fontSizeDefault,
          fontWeight: FontWeight.w500,
        ),
      ],
    ),
  );
}
