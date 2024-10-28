import 'package:flutter/material.dart';
import 'package:ride_share_app_with_flutter/utils/common/styles/app_border_style.dart';
import 'package:ride_share_app_with_flutter/utils/constants/app_color.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
            color: AppColor.grey,
            fontSize: 14,
            fontWeight: FontWeight.normal),
        border: AppBorderStyle.inputFieldBorder,
        focusedBorder: AppBorderStyle.inputFieldBorder,
      ),
    );
  }
}
