import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/custom_text_field.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
          title: AppConstants.settings,
          leading: const Icon(Icons.arrow_back_ios),
          onprass: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              AppConstants.generalSettings,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF0071E3),
              ),
            ),
            const SizedBox(height: 13),
            CustomContainer(
              onprass: () {},
              title: AppConstants.changePassword,
              prifixicon: Icon(Icons.lock_outline),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {},
              title: AppConstants.subPackages,
              prifixicon: Icon(Icons.backpack_outlined),
            ),
            const SizedBox(height: 24),
            Text(
              AppConstants.security,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF0071E3),
              ),
            ),
            const SizedBox(height: 13),
            CustomContainer(
              onprass: () {},
              title: AppConstants.privacyPolicy,
              prifixicon: Icon(Icons.privacy_tip_outlined),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {},
              title: AppConstants.termsServices,
              prifixicon: Icon(Icons.error_outline),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {},
              title: AppConstants.aboutUs,
              prifixicon: Icon(Icons.error),
            ),
            const SizedBox(height: 8),
            CustomContainer(
              onprass: () {},
              title: AppConstants.deleteAccount,
              prifixicon: const Icon(
                Icons.restore_from_trash_outlined,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
