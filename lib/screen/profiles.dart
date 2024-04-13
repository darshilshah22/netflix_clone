import 'package:flutter/material.dart';
import 'package:netflix_clone/constants/constants.dart';
import 'package:netflix_clone/constants/text_theme.dart';
import 'package:netflix_clone/screen/add_profile.dart';

import '../constants/images.dart';
import '../constants/sizes.dart';

class Profiles extends StatefulWidget {
  const Profiles({super.key});

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(AppImages.logo1, height: 32),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildProfileCard()],
        ),
      ),
    );
  }

  Widget buildProfileCard() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 64, right: 64),
      child: Column(
        children: [
          Text(
            "Who's Watching?",
            style: AppTextTheme.heading2.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: h1),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
            ),
            itemCount: profiles.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  if (index != profiles.length - 1) ...[
                    Expanded(
                      child: Image.asset(
                        profiles[index].image!,
                        width: 150,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      profiles[index].name!,
                      style: AppTextTheme.heading3
                          .copyWith(fontWeight: FontWeight.w400),
                    )
                  ] else ...[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddProfile(),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 64,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      profiles[index].name!,
                      style: AppTextTheme.heading3.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
