import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  Function() onprass;
  final Icon prifixicon;
  CustomContainer({
    super.key,
    required this.title,
    required this.prifixicon,
    required this.onprass,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onprass,
      child: Container(
        width: 341.w,
        height: 60.h,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 8,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 26.w,
                    height: 26.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: prifixicon,
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color(0xFF2B2A2A),
                      fontSize: 18.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 36.w),
            Container(
                width: 26.w,
                height: 26.h,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: const Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}
