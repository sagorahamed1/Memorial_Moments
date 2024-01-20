import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/views/widgets/custom_button.dart';
import 'package:memorial/views/widgets/custom_text_field.dart';
import '../../../utils/app_images.dart';
import '../../widgets/custom_app_bar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _value = false;

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
            const SizedBox(height: 40),
            CustomButton(
              onpress: () {},
              title: AppConstants.signUp,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.blue,
                    value: _value,
                    onChanged: (bool? value) {
                      setState(() {
                        _value = value!;
                      });
                    }),
                const SizedBox(width: 5),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By creating an account, I accept the ',
                        style: TextStyle(
                          color: Color(0xFF2B2A2A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms\nof Services',
                        style: TextStyle(
                          color: Color(0xFF0071E3),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: ', and ',
                        style: TextStyle(
                          color: Color(0xFF2B2A2A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Color(0xFF0071E3),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                          color: Color(0xFF2B2A2A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
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
