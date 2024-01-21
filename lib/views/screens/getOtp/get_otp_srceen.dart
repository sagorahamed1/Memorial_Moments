import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import 'package:memorial/views/widgets/custom_pin_code.dart';

class GetOtpScreen extends StatelessWidget {
  const GetOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: "", leading: const Icon(Icons.arrow_back_ios), onprass: () {
        Get.back();
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              AppConstants.getOTP,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF0071E3),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              AppConstants.enterOTP,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2B2A2A),
              ),
            ),
            const SizedBox(height: 61),
            const CustomPinCode(),
            const SizedBox(height: 24),
            Text(
              AppConstants.didntCode,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0071E3),
              ),
            ),
            const SizedBox(height: 246),
            CustomButton(title: AppConstants.verify, onpress: () {
              Get.toNamed(AppRoutes.resetPassword);
            }),
            const SizedBox(height: 54),
          ],
        ),
      ),
    );
  }
}
