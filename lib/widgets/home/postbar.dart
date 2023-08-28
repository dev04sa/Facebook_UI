import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {
            print('user avatar clicked');
          },
          icon: CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/images/13.jpg'),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "What's on your mind ? ",
              style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
            )),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black54,
          ),
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.photo_library_rounded)),
            Text('Photo'),
          ],
        ),
      ],
    );
  }
}
