import 'package:flutter/material.dart';
import 'package:ride_share_app_with_flutter/features/authentications/login/ui/login.dart';
import 'package:ride_share_app_with_flutter/utils/common/widgets/app_text_button.dart';
import 'package:ride_share_app_with_flutter/utils/common/widgets/text_input_field.dart';
import 'package:ride_share_app_with_flutter/utils/constants/app_color.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                    "Sign up with your details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              const SizedBox(
                height: 20,
              ),
              const TextInputField(
                hint: "Name",
              ),
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
                hint: "Phone",
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                text: "Sign Up",
                onPressed: () {},
                backgroundColor: AppColor.primaryColor,
                textColor: AppColor.white,
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
                text: "Sign Up with Google",
                onPressed: () {},
                textColor: AppColor.grey,
                borderColor: AppColor.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                icon: Icons.facebook,
                text: "Sign Up with Facebook",
                onPressed: () {},
                textColor: AppColor.grey,
                borderColor: AppColor.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextButton(
                icon: Icons.apple,
                text: "Sign Up with Apple",
                onPressed: () {},
                textColor: AppColor.grey,
                borderColor: AppColor.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text(
                      "Login",
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
