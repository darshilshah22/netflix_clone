import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/sizes.dart';
import 'package:netflix_clone/constants/text_theme.dart';
import 'package:netflix_clone/screen/auth/create_account.dart';

import '../../utils/common_widgets.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const SizedBox(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.close,
              size: 32,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: h1),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Text(
                "Ready to watch?",
                style: AppTextTheme.heading1
                    .copyWith(color: Colors.black, fontSize: 32),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: h1, vertical: h2),
                child: Text(
                  "Enter your email to create or sign in to your account.",
                  textAlign: TextAlign.center,
                  style: AppTextTheme.bodySecondaryRegular.copyWith(
                    color: Colors.black,
                    fontSize: h3,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              customTextFormField(controller: emailController, hint: "Email"),
              SizedBox(height: h1),
              buildButton(
                text: "Get Started",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
