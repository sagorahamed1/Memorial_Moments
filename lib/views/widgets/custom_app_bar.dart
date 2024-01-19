import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Icon leading;
  Function() onprass;

  CustomAppBar({
    super.key,
    required this.title,
    required this.leading,
    required this.onprass,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerLeft,
                  child: GestureDetector(onTap: onprass, child: leading)),
            ),
            Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xFF2B2A2A),
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}
