import 'package:flutter/material.dart';

class Menubar extends StatelessWidget {
  const Menubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.post_add_outlined),
              Text(
                'Text',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black54,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.video_call,
                color: Colors.red,
              ),
              Text(
                'Live Video',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black54,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Text(
                'Location ',
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              )
            ],
          ),
        ),
      ],
    );
  }
}
