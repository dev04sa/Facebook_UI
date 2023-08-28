import 'package:facebook/modals/notification_modal.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Notifications',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.check_circle,
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    tooltip: 'Mark all Notification',
                    onPressed: () {
                      print('check button clicked');
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
                itemCount: notiData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage: AssetImage(notiData[i].avatar),
                          ),
                          title: Text(
                            notiData[i].name + " " + notiData[i].description,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          subtitle: Text(notiData[i].time),
                          trailing: IconButton(
                            iconSize: 20.0,
                            color: Colors.green,
                            onPressed: () {},
                            icon: Icon(Icons.more_vert_outlined),
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
