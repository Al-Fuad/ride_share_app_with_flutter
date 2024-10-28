import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingNextButtonPressed>(_onboardingNextButtonPressed);
    on<OnboardingSkipButtonPressed>(_onboardingSkipButtonPressed);
  }

  FutureOr<void> _onboardingNextButtonPressed(
      OnboardingNextButtonPressed event, Emitter<OnboardingState> emit) {
    emit(OnboardingNextButtonPressedState(event.currentIndex));
  }

  FutureOr<void> _onboardingSkipButtonPressed(
      OnboardingSkipButtonPressed event, Emitter<OnboardingState> emit) {
    emit(OnboardingSkipButtonPressedState());
  }
}
