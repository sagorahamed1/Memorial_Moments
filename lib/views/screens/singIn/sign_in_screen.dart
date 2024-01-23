import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/routes/app_routes.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/app_images.dart';
import 'package:memorial/views/widgets/custom_text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

//=============================================> Body Section <======================================

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 115.h),
                SizedBox(
                  width: 69.w,
                  height: 92.h,
                  child: Image.asset(appImages.appLogo),
                ),
                SizedBox(height: 16.h),
                Text(
                  AppConstants.memorialMoments,
                  style: GoogleFonts.parisienne(
                    color: const Color(0xFF0071E3),
                    fontWeight: FontWeight.w900,
                    fontSize: 24.sp,
                  ),
                ),
                CustomText(
                  text: AppConstants.connectMemories,
                  color: const Color(0xFF2B2A2A),
                  fontWeight: FontWeight.w400,
                  fontsize: 18.sp,
                ),
                SizedBox(height: 30.h),
                CustomText(
                    text: AppConstants.unlockMemories,
                    color: const Color(0xFF2B2A2A),
                    fontWeight: FontWeight.w400,
                    fontsize: 14.sp),
                SizedBox(height: 20.h),
                CustomTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    }
                  },
                  title: AppConstants.email,
                  prifixicon: const Icon(Icons.email_outlined),
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter you password";
                    }
                  },
                  title: AppConstants.password,
                  prifixicon: const Icon(Icons.lock_outline),
                  sufixicons: const Icon(Icons.remove_red_eye_outlined),
                ),
                SizedBox(height: 20.h),
                CustomText(
                  text: AppConstants.forgetPass,
                  color: const Color(0xFF0071E3),
                  fontWeight: FontWeight.w600,
                  fontsize: 18.sp,
                ),
                SizedBox(height: 20.h),
                CustomButton(
                    onpress: () {
                      if (_formKey.currentState!.validate()) {
                        Get.toNamed(AppRoutes.homeScreen);
                      }
                    },
                    title: AppConstants.signIn),
                SizedBox(height: 20.h),

//===================================================> Sign in with another platform <==============================

                Center(
                  child: CustomText(
                    text: AppConstants.or,
                    color: const Color(0xFF2B2A2A),
                    fontWeight: FontWeight.w600,
                    fontsize: 14.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 342.w,
                  height: 56.h,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300.w,
                        height: 65.h,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              clipBehavior: Clip.none,
                              decoration: const BoxDecoration(),
                              child: SvgPicture.asset(AppIcons.google),
                            ),
                            SizedBox(width: 10.w),
                            CustomText(
                              text: AppConstants.continueGoogle,
                              color: const Color(0xFF2B2A2A),
                              fontWeight: FontWeight.w500,
                              fontsize: 18.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: AppConstants.dontAccount,
                      color: const Color(0xFF2B2A2A),
                      fontWeight: FontWeight.w400,
                      fontsize: 18.sp,
                    ),
                    SizedBox(width: 5.w),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.signUpScreen);
                      },
                      child: CustomText(
                        text: AppConstants.signUp,
                        color: const Color(0xFF0071E3),
                        fontWeight: FontWeight.w600,
                        fontsize: 18.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 54.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
