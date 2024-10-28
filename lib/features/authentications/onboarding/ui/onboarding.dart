import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share_app_with_flutter/features/authentications/welcome/ui/welcome.dart';

import '../bloc/onboarding_bloc.dart';
import 'widgets/onboarding_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    int pageIndex = 0;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
                onTap: () {
                  context
                      .read<OnboardingBloc>()
                      .add(OnboardingSkipButtonPressed());
                },
                child: const Text("Skip", style: TextStyle(color: Colors.black))),
          )
        ],
      ),
      body: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
        if (state is OnboardingSkipButtonPressedState) {
          pageIndex = 3;
        }
        if (state is OnboardingNextButtonPressedState) {
          pageIndex++;
        }
        if (pageIndex > 2) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Welcome()));
        }
      }, builder: (context, state) {
        if (pageIndex == 0) {
          return OnboardPage(
            image: 'assets/onboarding/onBoarding1.png',
            title: 'Anywhere you are',
            subtitle:
                'Sell houses easily with the help of Listenoryx and to make this line big I am writing more.',
            percent: 0.33,
            onPressed: () {
              context
                  .read<OnboardingBloc>()
                  .add(OnboardingNextButtonPressed(1));
            },
          );
        }
        if (pageIndex == 1) {
          return OnboardPage(
            image: 'assets/onboarding/onBoarding2.png',
            title: 'At anytime',
            subtitle:
                'Sell houses easily with the help of Listenoryx and to make this line big I am writing more.',
            percent: 0.67,
            onPressed: () {
              context
                  .read<OnboardingBloc>()
                  .add(OnboardingNextButtonPressed(2));
            },
          );
        }
        if (pageIndex == 2) {
          return OnboardPage(
            image: 'assets/onboarding/onBoarding3.png',
            title: 'Book your car',
            subtitle:
                'Sell houses easily with the help of Listenoryx and to make this line big I am writing more.',
            percent: 1,
            onPressed: () {
              context
                  .read<OnboardingBloc>()
                  .add(OnboardingNextButtonPressed(3));
            },
          );
        }
        return const SizedBox();
      }),
    );
  }
}
