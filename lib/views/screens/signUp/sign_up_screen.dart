import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memorial/utils/app_colors.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';
import '../../../utils/app_images.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: AppColors.bgColors,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            Container(
              width: 69.w,
              height: 92.h,
              child: Image.asset(AppImages.appLogo),
            ),
            const SizedBox(height: 24),
            const Text(
              AppConstants.honorForever,
              style: TextStyle(
                color: Color(0xFF2B2A2A),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 44),
            const CustomTextField(
                title: AppConstants.fullName,
                prifixicon: Icon(Icons.person_outline_rounded)),
            const SizedBox(height: 16),
            const CustomTextField(
                title: AppConstants.email,
                prifixicon: Icon(Icons.email_outlined)),
            const SizedBox(height: 16),
            const CustomTextField(
              title: AppConstants.password,
              prifixicon: Icon(Icons.lock_outline),
              sufixicons: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 16),
            const CustomTextField(
              title: AppConstants.rePassword,
              prifixicon: Icon(Icons.lock_outline),
              sufixicons: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(height: 40),
            const CustomButton(
              title: AppConstants.signUp,
            )
          ],
        ),
      ),
    );
  }
}
