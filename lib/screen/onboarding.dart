import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/colors.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/constants/images.dart';
import 'package:netflix_clone/constants/sizes.dart';
import 'package:netflix_clone/constants/text_theme.dart';
import 'package:netflix_clone/data/repo/movies_api.dart';
import 'package:netflix_clone/screen/auth/signin.dart';

import '../data/models/onboard_model.dart';
import '../utils/common_widgets.dart';
import 'auth/signup.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // Variables
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    fetchMovieData();
    // Initialize page controller
    _pageController = PageController(initialPage: 0);
    // // Automatic scroll behaviour
    // _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
    //   if (_pageIndex < 3) {
    //     _pageIndex++;
    //   } else {
    //     _pageIndex = 0;
    //   }

    //   _pageController.animateToPage(
    //     _pageIndex,
    //     duration: const Duration(milliseconds: 350),
    //     curve: Curves.easeIn,
    //   );
    // });
  }

  @override
  void dispose() {
    // Dispose everything
    _pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(AppImages.logo1, height: 32),
        titleSpacing: 24,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("HELP", style: AppTextTheme.bodySecondaryBold),
          ),
          const SizedBox(
            width: 24,
          ),
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.zero)),
            child: Text("PRIVACY", style: AppTextTheme.bodySecondaryBold),
          ),
          const SizedBox(
            width: 24,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
              );
            },
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.zero),
            ),
            child: Text("SIGN IN", style: AppTextTheme.bodySecondaryBold),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: h1, vertical: h1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildButton(
              text: "Get Started",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Signup(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        itemCount: demoData.length,
        controller: _pageController,
        itemBuilder: (context, index) => onBoardContent(
          onBoard: demoData[index],
        ),
      ),
    );
  }

  Widget onBoardContent({required OnBoard onBoard}) {
    return Stack(
      children: [
        Image.asset(
          onBoard.background,
          fit: BoxFit.cover,
          width: double.maxFinite,
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Spacer(),
              onBoard.image.isNotEmpty
                  ? Image.asset(onBoard.image)
                  : Container(
                      height: 250,
                      width: 250,
                      color: Colors.transparent,
                    ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h3, vertical: h3),
                    child: Text(
                      onBoard.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: titleSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    onBoard.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

// Dot indicator widget
class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: 10,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
