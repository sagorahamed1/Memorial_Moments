import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memorial/utils/app_constants.dart';
import 'package:memorial/utils/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 60,
              child: Image.asset(appImages.appLogo),
            ),
            Text(
              AppConstants.memorialMoments,
              style: GoogleFonts.parisienne(
                color: const Color(0xFF0071E3),
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
