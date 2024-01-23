import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_pin_code.dart';

class VerifyMailScreen extends StatelessWidget {
  const VerifyMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: "",
        leading: const Icon(Icons.arrow_back_ios),
        onprass: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44.h),
            Text(
              AppConstants.verifyEmail,
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF0071E3),
              ),
            ),
            SizedBox(height: 16.w),
            Text(
              AppConstants.weHaveSent,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2B2A2A),
              ),
            ),
            SizedBox(height: 44.h),
            const CustomPinCode(),
            SizedBox(height: 16.h),
            Text(
              AppConstants.didntCode,
              style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0071E3),
              ),
            ),
            const Spacer(),
            CustomButton(
                title: AppConstants.getStarted,
                onpress: () {
                  Get.toNamed(AppRoutes.forgetPassword);
                }),
            SizedBox(height: 54.h),
          ],
        ),
      ),
    );
  }
}
