import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_color.dart';
import '../../../../../utils/constants/app_size.dart';
import 'circular_button_with_percent_indicator.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.percent,
      required this.onPressed});

  final String image;
  final String title;
  final String subtitle;
  final double percent;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(image)),
        Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: AppSize.titleMd, color: AppColor.darkGrey),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: AppSize.subHeadLg,
                  color: AppColor.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        CircularButtonWithPercentIndicator(
          percent: percent,
          onPressed: onPressed,
        )
      ],
    );
  }
}
