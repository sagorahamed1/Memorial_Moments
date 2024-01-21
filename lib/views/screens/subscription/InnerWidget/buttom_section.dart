import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 342,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'By tapping Continue, you will be charged, your subscription will auto- renew for the same price and package length until you cancel via app settings, and you agree to our',
                    style: TextStyle(
                      color: Color(0xFF2B2A2A),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms.',
                    style: TextStyle(
                      color: Color(0xFF0071E3),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          CustomButton(title: AppConstants.continu, onpress: () {})
        ],
      ),
    );
  }
}
