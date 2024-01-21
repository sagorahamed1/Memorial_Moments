import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/views/widgets/custom_buttom.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_app_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: "",
        onprass: () {
          Get.back();
        },
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            SizedBox(
              width: 69.w,
              height: 92.h,
              child: Image.asset(appImages.appLogo),
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
            const SizedBox(height: 10),
            CustomButton(
                title: AppConstants.signUp,
                onpress: () {
                  Get.toNamed(AppRoutes.verifyMailScreen);
                }),
            const SizedBox(height: 24),
            Row(
              children: [
                SvgPicture.asset(AppIcons.checkbox),
                const SizedBox(width: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By creating an account, I accept the ',
                        style: TextStyle(
                          color: const Color(0xFF2B2A2A),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms\nof Services',
                        style: TextStyle(
                          color: const Color(0xFF0071E3),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ', and ',
                        style: TextStyle(
                          color: const Color(0xFF2B2A2A),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: const Color(0xFF0071E3),
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
