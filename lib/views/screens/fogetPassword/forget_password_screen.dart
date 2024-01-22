import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_app_bar.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';

import '../getOtp/get_otp_srceen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  final _formKey = GlobalKey<FormState>();

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

      //=============================================> Body Section <======================================

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                AppConstants.forgetPassword,
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF0071E3)),
              ),
              const SizedBox(height: 16),
              Text(
                AppConstants.pleaseEnter,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF2B2A2A)),
              ),
              const SizedBox(height: 26),
              CustomTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                  },
                  title: AppConstants.email,
                  prifixicon: const Icon(Icons.email_outlined)),
              const Spacer(),
              CustomButton(
                title: AppConstants.getOTP,
                onpress: () {
                  if (_formKey.currentState!.validate()) {
                    Get.toNamed(AppRoutes.getOtp);
                  }
                },
              ),
              const SizedBox(height: 54),
            ],
          ),
        ),
      ),
    );
  }
}
