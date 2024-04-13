import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/auth/signin.dart';
import 'package:netflix_clone/screen/home.dart';

import '../../constants/images.dart';
import '../../constants/sizes.dart';
import '../../constants/text_theme.dart';
import '../../utils/common_widgets.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(AppImages.logo1, height: 32),
        // titleSpacing: 24,
        leading: const SizedBox(),
        leadingWidth: 0,
        actions: [
          Text(
            "HELP",
            style: AppTextTheme.bodySecondaryBold.copyWith(color: Colors.black),
          ),
          const SizedBox(
            width: 24,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
              );
            },
            child: Text(
              "SIGN IN",
              style:
                  AppTextTheme.bodySecondaryBold.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: h1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              "Ready to experience unlimited TV shows & movies",
              style: AppTextTheme.heading1
                  .copyWith(color: Colors.black, fontSize: 28),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: h2),
              child: Text(
                "Create an account to learn more about Netflix.",
                style: AppTextTheme.bodySecondaryRegular.copyWith(
                  color: Colors.black,
                  fontSize: h2,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            customTextFormField(controller: emailController, hint: "Email"),
            SizedBox(
              height: h3,
            ),
            customTextFormField(controller: emailController, hint: "Password"),
            SizedBox(height: h1),
            buildButton(
              text: "Continue",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
