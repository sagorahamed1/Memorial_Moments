import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_text.dart';

class TermsofServicesScrren extends StatelessWidget {
  const TermsofServicesScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: AppConstants.termsServices,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 8.w),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 8.w),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 8.w),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 8.w),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 8.w),
            CustomText(
              text: AppConstants.loremIpsum,
              fontsize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 8.w),
          ],
        ),
      ),
    );
  }
}
