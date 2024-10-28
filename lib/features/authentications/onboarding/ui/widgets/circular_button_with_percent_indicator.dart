import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../common/widgets/buttons/circular_button.dart';
import '../../../../../utils/constants/app_color.dart';

class CircularButtonWithPercentIndicator extends StatelessWidget {
  const CircularButtonWithPercentIndicator(
      {super.key, this.text, required this.percent, required this.onPressed});

  final String? text;
  final double percent;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularPercentIndicator(
          radius: 40,
          lineWidth: 5,
          percent: percent,
          progressColor: AppColor.primaryColor,
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: CircularButton(
              text: text,
              size: 70,
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}
