import 'package:flutter/material.dart';
import 'package:ride_share_app_with_flutter/features/authentications/login/ui/login.dart';
import 'package:ride_share_app_with_flutter/features/authentications/signup/ui/signup.dart';
import 'package:ride_share_app_with_flutter/utils/common/widgets/app_text_button.dart';
import 'package:ride_share_app_with_flutter/utils/constants/app_color.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/welcome/welcome.png',
                height: 250,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Have a better sharing experience',
                  style: TextStyle(fontSize: 16, color: AppColor.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                AppTextButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()));
                  },
                  backgroundColor: AppColor.primaryColor,
                  textColor: AppColor.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextButton(
                  text: "Sign Up",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Signup()));
                  },
                  borderColor: AppColor.primaryColor,
                  textColor: AppColor.primaryColor,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
