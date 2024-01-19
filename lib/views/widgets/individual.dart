import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/dimensions.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class Individual extends StatelessWidget {
  const Individual({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 108.h,
      left: 12.w,
      child: Container(
        height: 23.h,
        width: 73.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.blue500),
        child: Center(
          child: CustomText(
            text: AppConstants.individual,
            color: AppColors.white,
            fontsize: Dimensions.fontSizeExtraSmall,
          ),
        ),
      ),
    );
  }
}