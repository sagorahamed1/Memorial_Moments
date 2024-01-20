import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {

  final String? text;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;

  const CustomText({super.key, required this.text, this.fontsize, this.fontWeight, this.color, this.wordSpacing});

  @override
  Widget build(BuildContext context) {
    return

      // Text(
      //   "$text",
      //   style: GoogleFonts.poppins(
      //     color: color,
      //     fontWeight: fontWeight,
      //     fontSize: fontsize,
      //   ),
      // );
      Text("$text",style: TextStyle(color: color,fontSize: fontsize,fontWeight: fontWeight,));
  }
}