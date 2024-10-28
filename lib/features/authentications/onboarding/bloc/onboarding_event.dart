part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

class OnboardingNextButtonPressed extends OnboardingEvent{
  final int currentIndex;
  OnboardingNextButtonPressed(this.currentIndex);
}

class OnboardingSkipButtonPressed extends OnboardingEvent{}
