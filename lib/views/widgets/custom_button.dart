import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 56,
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
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}