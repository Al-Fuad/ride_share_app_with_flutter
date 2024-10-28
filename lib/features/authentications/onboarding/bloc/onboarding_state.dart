part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState {


  set currentIndex(int currentIndex) {}
}

final class OnboardingInitial extends OnboardingState {} 

final class OnboardingNextButtonPressedState extends OnboardingState{
  final int currentIndex;
  OnboardingNextButtonPressedState(this.currentIndex);
}

final class OnboardingSkipButtonPressedState extends OnboardingState{}



