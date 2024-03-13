import 'package:fintness/constant/Assets_directory.dart';

import 'package:flutter/material.dart';

class NotificationList extends StatefulWidget {
  final String title;
  final String subtitle;
  final String time;
  NotificationList(
      {Key? key,
      required this.time,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,left:10,right:10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            widget.title == "You have a new like"
                ? Container(
                    height: 60,
                    width: 50,
                    child: Image.asset(
                      Assets.likePost,
                      fit: BoxFit.fill,
                    ))
                : 
                
            widget.title == "Congratulation"
            ?Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      Assets.completed,
                      fit: BoxFit.fill,
                    ))
                    : widget.title == "Missed Workout"
                    ?Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      Assets.missed,
                      fit: BoxFit.fill,
                    ))
                    :Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      Assets.newChallenges,
                      fit: BoxFit.fill,
                    )),
            const SizedBox(
              width: 20,
            ),
            Container(
              height: 75,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(widget.time)
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
