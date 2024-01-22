
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/dimensions.dart';

class TextFieldCustom extends StatelessWidget {
  final String? hinText;
  final dynamic? suffixIcon;

  const TextFieldCustom({this.hinText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.h,
      width: 342.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 4, left: 15),
            fillColor: AppColors.white,
            filled: true,
            suffixIcon: Container(
                margin: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset(
                  "${suffixIcon}",
                )),
            hintText: hinText,
            hintStyle: const TextStyle(
                color: AppColors.black100,
                fontSize: Dimensions.fontSizeSmall,
                fontWeight: FontWeight.w500),
            border: InputBorder.none),
      ),
    );
  }
}
