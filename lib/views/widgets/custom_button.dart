import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatelessWidget {
  final Function onpress;
  final String title;
  const CustomButton({
    super.key, required this.title,required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress(),
      child: Container(
        width: 342.w,
        height: 56.h,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: const Color(0xFF0071E3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}