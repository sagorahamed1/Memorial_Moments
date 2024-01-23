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
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
        onprass: () {
          Get.back();
        },
        leading: const Icon(Icons.arrow_back_ios),
      ),

//=============================================> Body Section <======================================

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7.h),
                SizedBox(
                  width: 69.w,
                  height: 92.h,
                  child: Image.asset(appImages.appLogo),
                ),
                SizedBox(height: 24.h),
                Text(
                  AppConstants.honorForever,
                  style: TextStyle(
                    color: const Color(0xFF2B2A2A),
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 44.h),

                //=============================================> CustomTextField Section <======================================

                CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your full name";
                      }
                    },
                    title: AppConstants.fullName,
                    prifixicon: const Icon(Icons.person_outline_rounded)),
                SizedBox(height: 16.h),
                CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email";
                      }
                    },
                    title: AppConstants.email,
                    prifixicon: const Icon(Icons.email_outlined)),
                SizedBox(height: 16.h),
                CustomTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    }
                  },
                  title: AppConstants.password,
                  prifixicon: const Icon(Icons.lock_outline),
                  sufixicons: const Icon(Icons.remove_red_eye_outlined),
                ),
                SizedBox(height: 16.h),
                CustomTextField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Re-password";
                    }
                  },
                  title: AppConstants.rePassword,
                  prifixicon: const Icon(Icons.lock_outline),
                  sufixicons: const Icon(Icons.remove_red_eye_outlined),
                ),
                SizedBox(height: 24.h),

                //=============================================> CustomTextField Section <======================================

                CustomButton(
                  title: AppConstants.signUp,
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(AppRoutes.verifyMailScreen);
                    }
                  },
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.checkbox),
                    SizedBox(width: 10.h),

                    //=============================================> Text.rich bottom Section <======================================

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
                              height: 0.h,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms\nof Services',
                            style: TextStyle(
                              color: const Color(0xFF0071E3),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          ),
                          TextSpan(
                            text: ', and ',
                            style: TextStyle(
                              color: const Color(0xFF2B2A2A),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: const Color(0xFF0071E3),
                              fontSize: 14.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
