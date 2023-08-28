import 'package:flutter/material.dart';

class MessageModal {
  final String name;
  final String time;
  final String avatar;
  final Icon status;

  MessageModal({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });
  static Icon statusOnline = Icon(
    Icons.phone_android_outlined,
    size: 18.0,
    color: Colors.green,
  );
  static Icon statusOffline = Icon(
    Icons.phone_android_outlined,
    size: 18.0,
    color: Colors.black38,
  );
}

List<MessageModal> messageData = [
  MessageModal(
      name: "Dev",
      time: "1:20",
      avatar: "assets/images/13.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "Deva",
      time: "10:20",
      avatar: "assets/images/3.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "Devendra",
      time: "10:40",
      avatar: "assets/images/4.jpg",
      status: MessageModal.statusOffline),
  MessageModal(
      name: "Jay",
      time: "10:55",
      avatar: "assets/images/5.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "Vikas",
      time: "11:10",
      avatar: "assets/images/6.jpg",
      status: MessageModal.statusOffline),
  MessageModal(
      name: "Ravi",
      time: "11:35",
      avatar: "assets/images/7.jpg",
      status: MessageModal.statusOffline),
  MessageModal(
      name: "Pratap",
      time: "11:50",
      avatar: "assets/images/8.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "Rahul",
      time: "12:05",
      avatar: "assets/images/9.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "abhi",
      time: "12:25",
      avatar: "assets/images/10.jpg",
      status: MessageModal.statusOffline),
  MessageModal(
      name: "veer",
      time: "12:40",
      avatar: "assets/images/11.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "ved",
      time: "12:45",
      avatar: "assets/images/12.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "Jay",
      time: "1:10",
      avatar: "assets/images/14.jpg",
      status: MessageModal.statusOffline),
  MessageModal(
      name: "Ravi",
      time: "11:35",
      avatar: "assets/images/7.jpg",
      status: MessageModal.statusOffline),
  MessageModal(
      name: "Pratap",
      time: "11:50",
      avatar: "assets/images/8.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "Rahul",
      time: "12:05",
      avatar: "assets/images/9.jpg",
      status: MessageModal.statusOnline),
  MessageModal(
      name: "abhi",
      time: "12:25",
      avatar: "assets/images/10.jpg",
      status: MessageModal.statusOffline),
];
