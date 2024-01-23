import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import 'package:memorial/views/widgets/custom_pin_code.dart';
import 'package:memorial/views/widgets/custom_text.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: "",
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {
            Get.back();
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            CustomText(text:AppConstants.getOTP,
              fontsize: 24.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF0071E3),
            ),
            SizedBox(height: 16.h),
            CustomText(text:AppConstants.enterOTP,
              fontsize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2B2A2A),
            ),
            SizedBox(height: 61.h),
            const CustomPinCode(),
            SizedBox(height: 24.h),
            CustomText(text:AppConstants.didntCode,
              fontsize: 18.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0071E3),
            ),
            const Spacer(),
            CustomButton(
                title: AppConstants.verify,
                onpress: () {
                  Get.toNamed(AppRoutes.resetPassword);
                }),
            SizedBox(height: 54.h),
          ],
        ),
      ),
    );
  }
}
