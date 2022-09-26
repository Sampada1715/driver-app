import 'package:flutter/material.dart';

class OnboardingItem{
  final String title;
  final String subtitle;
  final String image;
  final Color color;

  const OnboardingItem({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.color,
  });
}
class OnboardingItems{
  static List<OnboardingItem> loadOnboardingItem(){
    const fi = <OnboardingItem>[
      OnboardingItem(
        title: "Earn extra money driving full day city rides",
        subtitle: "#CityDarshan",
        image: "images/slider11.png",
        color: Colors.white,
      ),
      OnboardingItem(
        title: "Track your earnings at a glance",
        subtitle: "",
        image: "images/slider22.png",
        color: Colors.green,
      ),
      OnboardingItem(
        title: "Get ratings from people after ride",
        subtitle: "",
        image: "images/slider33.png",
        color: Colors.white,
      ),
      OnboardingItem(
        title: "Get reserved charging points for TukTuk",
        subtitle: "#CityDarshan",
        image: "images/slider44.png",
        color: Colors.green,
      ),
    ];
    return fi;
  }
}