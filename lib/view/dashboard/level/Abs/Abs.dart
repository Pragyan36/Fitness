
import 'package:fintness/Widget/Exercises.dart';
import 'package:fintness/view/dashboard/level/Abs/workout.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  final String title;
  final String image;
  final String description;
  final String level;
  final String time;
  final String Focus;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;

  const Intro(
      {super.key,
      required this.title,
      required this.description,
      required this.level,
      required this.time,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.title5,
      required this.title6,
      required this.Focus,
      required this.image});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 47, 60, 243).withOpacity(0.5),
                          Colors.transparent
                        ],
                        begin: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, right: 15, left: 15),
              child: Text(
                widget.description,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 10, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Level",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(widget.level,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          bottom: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(widget.time,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 10, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Focus",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            Text(widget.Focus,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black))
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Exercises (6)",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            Exercises(
              time: "00:00",
              title: widget.title1,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Workout();
                }));
              },
            ),
            Exercises(
              time: "02:00",
              title: widget.title2,
              ontap: () {},
            ),
            Exercises(
              time: "04:00",
              title: widget.title3,
              ontap: () {},
            ),
            Exercises(
              time: "06:00",
              title: widget.title4,
              ontap: () {},
            ),
            Exercises(
              time: "08:00",
              title: widget.title5,
              ontap: () {},
            ),
            Exercises(
              time: "10:00",
              title: widget.title6,
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
