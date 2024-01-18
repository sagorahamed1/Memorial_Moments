import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final Icon? sufixicons;
  final Icon prifixicon;
  const CustomTextField({
    super.key,
    required this.title,
    this.sufixicons,
    required this.prifixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: prifixicon,
        suffixIcon: sufixicons,
        suffixIconColor: Colors.blue,
        prefixIconColor: Colors.blue,
        hintText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
