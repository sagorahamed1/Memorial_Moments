import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? wordSpacing;
  final TextOverflow? overflow;
  final int? maxline;
  CustomText(
      {@required
        this.text,
      this.fontsize,
      this.fontWeight,
      this.color,
        this.overflow,this.maxline,
      this.wordSpacing});
  @override
  Widget build(BuildContext context) {
    return
      Text(
      "$text",
      maxLines: maxline,
      overflow:overflow,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontsize,
      ),
    );
    // Text("$text",
    //     style: TextStyle(
    //       color: color,
    //       fontSize: fontsize,
    //       fontWeight: fontWeight,
    //     ));
  }
}
