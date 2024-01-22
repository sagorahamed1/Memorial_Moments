import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_constants.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/dimensions.dart';
import '../../../widgets/custom_text.dart';

/// ----------------this is popup menu widget---------------------------->
PopupMenuItem PopUpMenu() {
  return PopupMenuItem(
    padding: EdgeInsets.all(0),
    // mouseCursor: MouseCursor.defer,
    enabled: true,
    onTap: () {
      Get.dialog(Dialog(
        child: Container(
          padding: EdgeInsets.only(left: 24,right: 24),
          height: 135.h,
          width: 342.w,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: AppConstants.dialogTitle,
                  color: AppColors.black500,
                  fontWeight: FontWeight.w400,
                  fontsize: Dimensions.fontSizeDefault,
                ),

                SizedBox(height: 24.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 36.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.blue500)
                      ),
                      child: Center(
                        child: CustomText(text: AppConstants.no,color: AppColors.blue500,fontWeight: FontWeight.w600,),
                      ),
                    ),

                    Container(
                      height: 36.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.red500,
                          border: Border.all(color: AppColors.red500)
                      ),
                      child: Center(
                        child: CustomText(text: AppConstants.no,color: AppColors.white,fontWeight: FontWeight.w600,),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ));
    },
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            AppIcons.delete,
            color: AppColors.red500,
          ),
          CustomText(
            text: AppConstants.delete,
            color: AppColors.red500,
          )
        ],
      ),
    ),
  );
}