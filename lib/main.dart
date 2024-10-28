import 'package:flutter/material.dart';
import 'package:ride_share_app_with_flutter/features/authentications/onboarding/bloc/onboarding_bloc.dart';
import 'package:ride_share_app_with_flutter/features/authentications/onboarding/ui/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardingBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ride Share App With FLutter',
        home: Onboarding(),
      ),
    );
  }
}
