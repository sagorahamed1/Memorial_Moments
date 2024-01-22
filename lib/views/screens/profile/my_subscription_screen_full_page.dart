import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_constants.dart';
import '../../../utils/app_icons.dart';
import '../../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class MySubscriptionScreenFullPage extends StatelessWidget {
  const MySubscriptionScreenFullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///------------------app bar section----------------->
      appBar: AppBar(
        backgroundColor: AppColors.bgColors,
        leading: Container(
          padding: EdgeInsets.only(top: 6,right: 6,bottom: 7),
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
        title: CustomText(
          text: AppConstants.mySubscription,
          fontWeight: FontWeight.w500,
          fontsize: Dimensions.fontSizeExtraLarge,
          color: AppColors.black500,
        ),
      ),

      ///--------------------this is body section----------------------------->
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeExtraLarge,
            vertical: Dimensions.paddingSizeLarge),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            Align(
              child: Container(
                height: 64.h,
                width: 282.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.blue100),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 16, right: 16),
                        child: SvgPicture.asset(AppIcons.crown)),
                    CustomText(
                      text: AppConstants.quarterPages,
                      fontWeight: FontWeight.w600,
                      fontsize: Dimensions.fontSizeExtraLarge,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppConstants.quarterPages,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
                CustomText(
                  text: AppConstants.manage,
                  fontsize: Dimensions.fontSizeExtraLarge,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppConstants.billedMonthly,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
                CustomText(
                  text: AppConstants.amount,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: AppConstants.nextBillingDate,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
                CustomText(
                  text: AppConstants.date,
                  fontsize: Dimensions.fontSizeDefault,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
              ],
            ),
            SizedBox(
              height: 390.h,
            ),

            ///<-------------------bottom section botton----------------------------->
            GestureDetector(
              onTap: (){
                ///-------------------alear Dialog----------------------->
                Get.dialog(Dialog(
                  child: Container(
                    padding: EdgeInsets.only(left: 24,right: 24),
                    height: 180.h,
                    width: 342.w,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            text: AppConstants.doYouWantToDelete,
                            color: AppColors.black500,
                            fontWeight: FontWeight.w400,
                            fontsize: Dimensions.fontSizeExtraLarge,
                          ),

                          SizedBox(height: 30.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              ///-------------no botton---------
                              Container(
                                height: 36.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: AppColors.blue500)
                                ),
                                child: Center(
                                  child: CustomText(text: AppConstants.no,color: AppColors.blue500,fontWeight: FontWeight.w600,),
                                ),
                              ),

                              ///-----------------yes botton----------------
                              Container(
                                height: 36.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.blue500,
                                    border: Border.all(color: AppColors.blue500)
                                ),
                                child: Center(
                                  child: CustomText(text: AppConstants.no,color: AppColors.white,fontWeight: FontWeight.w600,),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
                );
              },
              child: Container(
                height: 56.h,
                width: 342.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                  border: Border.all(color: AppColors.blue500)
                ),
                child:  Center(
                  child: CustomText(
                    text: AppConstants.renew,
                    fontsize: Dimensions.fontSizeExtraLarge,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue500,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
