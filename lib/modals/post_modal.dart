import 'package:flutter/material.dart';

class PostModal {
  final VoidCallback avataronPressed;
  final String avaterImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeonPressed;
  final VoidCallback commentonPressed;
  final VoidCallback shareonPressed;

  PostModal({
    required this.avataronPressed,
    required this.avaterImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeonPressed,
    required this.commentonPressed,
    required this.shareonPressed,
  });
}

List<PostModal> postData = [
  PostModal(
      avataronPressed: () {},
      avaterImage: "assets/images/11.jpg",
      name: "Jay Singh",
      time: "Just Now",
      moreOnPressed: () {},
      postTitle:
          "'Where can we find the courage to act in spite of fear? Tre ourselves, rather than within our own hearts.',",
      postImage: "assets/images/10.jpg",
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  PostModal(
      avataronPressed: () {},
      avaterImage: "assets/images/1.jpg",
      name: "Vijay Singh",
      time: "5 min ago",
      moreOnPressed: () {},
      postTitle:
          "'Where can we find the courage to atside ourselves, rather than within our own hearts.',",
      postImage: "assets/images/2.jpg",
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  PostModal(
      avataronPressed: () {},
      avaterImage: "assets/images/12.jpg",
      name: "Yogesh",
      time: "2 hours ago",
      moreOnPressed: () {},
      postTitle:
          "'Where can we find the courage to act in spite of fear? Trying to eliminate that which we react to fearfully is a fool’s errand rather than within our own hearts.',",
      postImage: "assets/images/8.jpg",
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  PostModal(
      avataronPressed: () {},
      avaterImage: "assets/images/4.jpg",
      name: "Vijay Singh",
      time: "5 min ago",
      moreOnPressed: () {},
      postTitle:
          "'Where can we find the courage to atside ourselves, rather than within our own hearts.',",
      postImage: "assets/images/6.jpg",
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  PostModal(
      avataronPressed: () {},
      avaterImage: "assets/images/9.jpg",
      name: "Jay Singh",
      time: "Just Now",
      moreOnPressed: () {},
      postTitle:
          "'Where can we find the courage to act in spite of fear? Tre ourselves, rather than within our own hearts.',",
      postImage: "assets/images/13.jpg",
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
];
