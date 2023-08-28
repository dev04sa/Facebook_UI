import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class VideoModal {
  final VoidCallback avataronPressed;
  final String avaterImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videopostTitle;
  final String? videopostImage;
  final VoidCallback likeonPressed;
  final VoidCallback commentonPressed;
  final VoidCallback shareonPressed;

  VideoModal({
    required this.avataronPressed,
    required this.avaterImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.videopostTitle,
    required this.videopostImage,
    required this.likeonPressed,
    required this.commentonPressed,
    required this.shareonPressed,
  });
}

List<VideoModal> videoData = [
  VideoModal(
      avataronPressed: () {},
      avaterImage: "assets/images/11.jpg",
      name: "Jay Singh",
      time: "Just Now",
      moreOnPressed: () {},
      videopostTitle:
          "'Where can we find the courage to act in spite of fear? Tre ourselves, rather than within our own hearts.',",
      videopostImage: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=YxWlaYCA8MU&pp=ygUPYm9sbHl3b29kIHNvbmdz"),
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
      VideoModal(
      avataronPressed: () {},
      avaterImage: "assets/images/1.jpg",
      name: "Vijay Singh",
      time: "5 min ago",
      moreOnPressed: () {},
      videopostTitle:
          "'Where can we find the courage to atside ourselves, rather than within our own hearts.',",
      videopostImage: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=DK_UsATwoxI&pp=ygUPYm9sbHl3b29kIHNvbmdz"),
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  VideoModal(
      avataronPressed: () {},
      avaterImage: "assets/images/12.jpg",
      name: "Yogesh",
      time: "2 hours ago",
      moreOnPressed: () {},
      videopostTitle:
          "'Where can we find the courage to act in spite of fear? Trying to eliminate that which we react to fearfully is a fool’s errand rather than within our own hearts.',",
      videopostImage: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=vdbP_3o73qI&pp=ygUPYm9sbHl3b29kIHNvbmdz"),
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  VideoModal(
      avataronPressed: () {},
      avaterImage: "assets/images/4.jpg",
      name: "Vijay Singh",
      time: "5 min ago",
      moreOnPressed: () {},
      videopostTitle:
          "'Where can we find the courage to atside ourselves, rather than within our own hearts.',",
      videopostImage: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=qfdShSZZxlg&pp=ygUPYm9sbHl3b29kIHNvbmdz"),
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
  VideoModal(
      avataronPressed: () {},
      avaterImage: "assets/images/9.jpg",
      name: "Jay Singh",
      time: "Just Now",
      moreOnPressed: () {},
      videopostTitle:
          "'Where can we find the courage to act in spite of fear? Tre ourselves, rather than within our own hearts.',",
      videopostImage: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BNfAf4To73c&pp=ygUPYm9sbHl3b29kIHNvbmdz"),
      likeonPressed: () {},
      commentonPressed: () {},
      shareonPressed: () {}),
];
