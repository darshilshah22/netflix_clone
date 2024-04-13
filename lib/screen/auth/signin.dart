import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/auth/signup.dart';
import 'package:netflix_clone/utils/common_widgets.dart';

import '../../constants/images.dart';
import '../../constants/sizes.dart';
import '../../constants/text_theme.dart';
import '../home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(AppImages.logo1, height: 32),
        leading: const SizedBox(),
        leadingWidth: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: h1, vertical: h2),
        child: Column(
          children: [
            customTextFormField(
                controller: emailController,
                hint: "Email or phone number",
                isDark: true),
            SizedBox(height: h3),
            customTextFormField(
                controller: passwordController, hint: "Password", isDark: true),
            SizedBox(height: titleSize),
            buildButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              text: "Sign In",
              color: Colors.transparent,
              borderColor: Colors.white,
            ),
            SizedBox(height: titleSize),
            Text(
              "Need help?",
              style: AppTextTheme.bodyPrimary.copyWith(color: Colors.white70),
            ),
            SizedBox(height: titleSize),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Signup(),
                  ),
                );
              },
              child: Text(
                "New to Netflix? Sign up now.",
                style: AppTextTheme.bodySecondaryBold.copyWith(fontSize: h3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
