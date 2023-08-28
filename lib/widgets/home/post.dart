import 'package:facebook/modals/post_modal.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < postData.length; i++) ...[
            Row(
              children: [
                IconButton(
                  onPressed: postData[i].avataronPressed,
                  iconSize: 50.0,
                  icon: CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage(postData[i].avaterImage),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postData[i].name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Wrap(
                        spacing: 10.0,
                        children: [
                          Text(
                            postData[i].time,
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Icon(Icons.public)
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                    iconSize: 30.0,
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz_outlined))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        postData[i].postTitle,
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
                    Image(image: AssetImage(postData[i].postImage))
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: postData[i].likeonPressed,
                        icon: Icon(Icons.thumb_up_alt_outlined)),
                    Text(
                      '20',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: postData[i].commentonPressed,
                        icon: Icon(Icons.comment)),
                    Text(
                      '8',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: postData[i].shareonPressed,
                        icon: Icon(Icons.share)),
                  ],
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
