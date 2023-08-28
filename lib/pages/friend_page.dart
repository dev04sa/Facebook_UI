import 'package:flutter/material.dart';

import '../modals/friends_modal.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Friends',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      print('person button clicked');
                    },
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.people,
                      color: Colors.redAccent,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      print('People button clicked');
                    },
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),
          ]),
        ),
        Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: friendData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage(friendData[i].avatar),
                          ),
                          title: Text(
                            friendData[i].name,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          trailing: Wrap(
                            spacing: 12,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Add Friend'),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Remove '),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey.shade400,
                                    primary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 10.0),
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                          onTap: () {
                            print('User profile');
                          },
                        )
                      ],
                    ))),
      ],
    );
  }
}
