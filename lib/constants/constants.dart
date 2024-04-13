import 'package:netflix_clone/constants/images.dart';
import 'package:netflix_clone/data/models/onboard_model.dart';
import 'package:netflix_clone/data/models/profile_model.dart';

List<ProfileModel> profiles = [
  ProfileModel(name: "John", image: AppImages.profileImage1),
  ProfileModel(name: "Alex", image: AppImages.profileImage2),
  ProfileModel(name: "Danny", image: AppImages.profileImage3),
  ProfileModel(name: "Add Profile", image: AppImages.profileImage1),
];

final List<OnBoard> demoData = [
  OnBoard(
    image: "",
    title: "Unlimited movies, TV shows & more",
    description:
        "Watch anywhere, cancle anytime.",
    background: AppImages.onboarding4,
  ),
  OnBoard(
    image: AppImages.onboarding2,
    title: "Download and watch offline",
    description:
        "Save your data, watch offline on a plane, train, or submarine.",
    background: AppImages.blackBg,
  ),
  OnBoard(
    image: AppImages.onboarding3,
    title: "No pesky contracts",
    description:
        "Join today, cancel anytime.",
    background: AppImages.blackBg,
  ),
  OnBoard(
    image: AppImages.onboarding1,
    title: "Watch on any device",
    description:
        "Stream on your phone, tablet, laptop, and TV without paying more.",
    background: AppImages.blackBg,
  ),
];

List<String> mylistImages = [
  AppImages.movie1,
  AppImages.movie2,
  AppImages.movie3,
  AppImages.movie4,
  AppImages.movie5,
  AppImages.movie6,
  AppImages.movie7,
  AppImages.movie8,
  AppImages.movie9,
  AppImages.movie10,
  AppImages.movie11,
];