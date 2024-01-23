import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memorial/utils/app_icons.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String price;
  const CustomCard({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 282.w,
      height: 163.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: const Color(0xFF8ABEF2)),
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 8,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 282.w,
              height: 64.h,
              decoration: const BoxDecoration(color: Color(0xFFB0D3F6)),
            ),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppIcons.crown),
                    SizedBox(width: 8.w),
                    Text(
                      title,
                      style: TextStyle(
                        color: const Color(0xFF2B2A2A),
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            top: 120,
            child: Text(
              price,
              style: TextStyle(
                color: const Color(0xFF0071E3),
                fontSize: 18.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
