import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:memorial/routes/app_routes.dart';
import '../../../../utils/app_constants.dart';
import '../../../widgets/custom_buttom.dart';

class ButtomSection extends StatelessWidget {
  const ButtomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 240.h,
      padding: const EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
        bottom: 54,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 342.w,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: AppConstants.byTapping,
                    style: TextStyle(
                      color: const Color(0xFF2B2A2A),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.h,
                    ),
                  ),
                  TextSpan(
                    text: AppConstants.terms,
                    style: TextStyle(
                      color: const Color(0xFF0071E3),
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          CustomButton(title: AppConstants.continu, onpress: () {
            Get.toNamed(AppRoutes.paymentVerifiedScreen);
          })
        ],
      ),
    );
  }
}
