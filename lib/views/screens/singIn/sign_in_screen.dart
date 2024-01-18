import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_icons.dart';
import 'package:memorial/utils/app_images.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 115),
              Container(
                width: 69.w,
                height: 92.h,
                child: Image.asset(AppImages.appLogo),
              ),
              const SizedBox(height: 16),
              Text(
                AppConstants.memorialMoments,
                style: GoogleFonts.parisienne(
                  color: const Color(0xFF0071E3),
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
              Text(
                AppConstants.memorialMoments,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF2B2A2A),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                AppConstants.unlockMemories,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF2B2A2A),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                title: AppConstants.email,
                prifixicon: Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                title: AppConstants.password,
                prifixicon: Icon(Icons.lock_outline),
                sufixicons: Icon(Icons.remove_red_eye_outlined),
              ),
              const SizedBox(height: 20),
              Text(
                AppConstants.forgetPass,
                style: GoogleFonts.poppins(
                  color: const Color(0xFF0071E3),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              const CustomButton(title: AppConstants.signIn),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  AppConstants.or,
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF2B2A2A),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 342,
                height: 56,
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
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: Stack(
                          children: [SvgPicture.asset(AppIcons.googleIcon)]),
                    ),
                    const SizedBox(width: 10),
                    const SizedBox(
                      width: 160,
                      height: 18,
                      child: Text(
                        AppConstants.continueGoogle,
                        style: TextStyle(
                          color: Color(0xFF2B2A2A),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppConstants.dontAccount,
                    style: TextStyle(
                      color: Color(0xFF2B2A2A),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    AppConstants.signIn,
                    style: TextStyle(
                      color: Color(0xFF0071E3),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 54),
            ],
          ),
        ),
      ),
    );
  }
}
