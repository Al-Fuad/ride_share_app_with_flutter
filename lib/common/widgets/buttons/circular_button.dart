import 'package:flutter/material.dart';
import 'package:ride_share_app_with_flutter/utils/constants/app_color.dart';
import 'package:ride_share_app_with_flutter/utils/constants/app_size.dart';

class CircularButton extends StatelessWidget {
  const CircularButton(
      {super.key,
      this.buttonColor,
      this.color = Colors.white,
      this.icon = Icons.arrow_forward_ios,
      required this.onPressed,
      this.size = 50, this.text});

  final Color? buttonColor;
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(size, size),
        backgroundColor: buttonColor ?? AppColor.primaryColor,
        shape: const CircleBorder(),
      ),
      onPressed: onPressed,
      child: (text == null)
          ? Icon(
              icon,
              color: color,
            )
          : Text(
              text!,
              style: TextStyle(color: color, fontSize: AppSize.bodyLg),
            ),
    );
  }
}
