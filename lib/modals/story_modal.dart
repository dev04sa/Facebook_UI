import 'package:flutter/material.dart';

class StoryModal {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModal(
      {required this.onTap, required this.image, required this.userName});
}

List<StoryModal> storyData = [
  StoryModal(onTap: () {}, image: "assets/images/9.jpg", userName: "Deva"),
  StoryModal(onTap: () {}, image: "assets/images/8.jpg", userName: "Dev Sa"),
  StoryModal(onTap: () {}, image: "assets/images/4.jpg", userName: "Devendra"),
  StoryModal(onTap: () {}, image: "assets/images/5.jpg", userName: "Jay"),
  StoryModal(onTap: () {}, image: "assets/images/6.jpg", userName: "Yogesh"),
  StoryModal(onTap: () {}, image: "assets/images/3.jpg", userName: "Vishal"),
  StoryModal(onTap: () {}, image: "assets/images/7.jpg", userName: "Vikas"),
];
