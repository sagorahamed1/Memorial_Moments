import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final Icon prifixicon;
  final String title;
  final Icon? sufixicons;
   const CustomTextField({
    super.key,
    required this.title,
     required this.prifixicon,
      this.sufixicons,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 452.w,
      height: 60.h,
      child: TextField(

        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: prifixicon,
          suffixIcon: sufixicons,
          suffixIconColor: Colors.blue,
          prefixIconColor: Colors.blue,
          hintText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
                color: Colors.white),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide:  BorderSide(
                width: 2,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
