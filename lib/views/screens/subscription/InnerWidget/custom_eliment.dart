import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/app_icons.dart';

class CustomEliment extends StatelessWidget {
  final String title;
  const CustomEliment({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24.w,
          height: 24.h,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: Stack(children: [SvgPicture.asset(AppIcons.checkcircle)]),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 221.w,
          height: 20.h,
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF2B2A2A),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
