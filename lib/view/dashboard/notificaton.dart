import 'package:fintness/Widget/Notification_list.dart';

import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Notification')),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Today",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          NotificationList(
            time: "1min ago",
            title: "New challenges Added",
            subtitle: "check out and practices with friends",
          ),
          NotificationList(
            time: "1min ago",
            title: "You have a new like",
            subtitle: "jennifer George just like your post",
          ),
                    const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Yesterday",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            
          ),
            NotificationList(
            time: "3hrs ago",
            title: "Congratulation",
            subtitle: "You have completed Chest Beginner Level",
          ),
            NotificationList(
            time: "22 January 2024",
            title: "Missed Workout",
            subtitle: "jennifer George just like your post",
          ),
        ],
      )),
    );
  }
}
