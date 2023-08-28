import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../modals/video_modal.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Videos',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Tooltip(
                  message: 'Play Video automatically',
                  child: Switch(
                    activeColor: Colors.blue,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black26,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: videoData.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            iconSize: 50.0,
                            onPressed: videoData[i].avataronPressed,
                            icon: CircleAvatar(
                              radius: 80.0,
                              backgroundImage:
                                  AssetImage(videoData[i].avaterImage),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  videoData[i].name,
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        spacing: 10.0,
                        children: [
                          Text(
                            videoData[i].time,
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Icon(Icons.public)
                        ],
                      ),
                      IconButton(
                          iconSize: 30.0,
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_outlined)),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            YoutubePlayerControllerProvider(
                              controller: YoutubePlayerController(
                                  params: YoutubePlayerParams()),
                              child: Text('Dev'),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
        )
      ],
    );
  }
}
