import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/colors.dart';
import 'package:netflix_clone/constants/sizes.dart';
import 'package:netflix_clone/constants/text_theme.dart';
import 'package:netflix_clone/utils/common_widgets.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({super.key});

  @override
  State<AddProfile> createState() => _AddProfileState();
}

class _AddProfileState extends State<AddProfile> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Add Profile",
          style: AppTextTheme.heading1.copyWith(fontSize: 22),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "Save",
              style: AppTextTheme.heading1
                  .copyWith(fontSize: 16, color: Colors.white24),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: h1, vertical: h1),
        child: Column(
          children: [
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomRight,
                        stops: const [0.6, 1],
                        colors: [
                          AppColors.primary,
                          Colors.white.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: Text(
                      "NF",
                      style: AppTextTheme.heading1.copyWith(fontSize: 56),
                    ),
                  ),
                  Positioned(
                    bottom: -4,
                    right: -4,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Icon(Icons.edit),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: h1),
            customTextFormField(
                isDark: true, controller: nameController, hint: "Profile Name"),
          ],
        ),
      ),
    );
  }
}
