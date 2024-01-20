import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 57.h,
          fieldWidth: 44.w,
          inactiveColor: Colors.grey,
          activeColor: Colors.blue
      ),
      obscureText: false,
      keyboardType: TextInputType.number,
      onChanged: (value){
      },
    );
  }
}