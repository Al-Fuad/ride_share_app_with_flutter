import 'package:flutter/material.dart';
import 'package:ride_share_app_with_flutter/utils/common/widgets/app_text_button.dart';
import 'package:ride_share_app_with_flutter/utils/common/widgets/text_input_field.dart';
import 'package:ride_share_app_with_flutter/utils/constants/app_color.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: IconButton(
          icon: const Row(
            children: [
              Icon(Icons.arrow_back_ios),
              Text('Back'),
            ],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign in with your email or phone number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 20,
              ),
              const TextInputField(
                hint: "Email",
              ),
              const SizedBox(
                height: 20,
              ),
              const TextInputField(
                hint: "Password",
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.white,
                text: "Login",
                onPressed: () {},
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(fontSize: 12, color: AppColor.red),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("or"),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                icon: Icons.mail_outline,
                text: "Sign up with Gmail",
                borderColor: AppColor.grey,
                textColor: AppColor.grey,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                icon: Icons.facebook,
                text: "Sign up with Facebook",
                borderColor: AppColor.grey,
                textColor: AppColor.grey,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                icon: Icons.apple,
                text: "Sign up with Apple",
                borderColor: AppColor.grey,
                textColor: AppColor.grey,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: AppColor.primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
