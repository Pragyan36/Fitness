import 'package:flutter/material.dart';

class GoalsWidegt extends StatefulWidget {
  final String title;
  final IconData iconss;
  final String goals;
  final double width;

  const GoalsWidegt({
    super.key,
    required this.title,
    required this.iconss,
    required this.goals,
    required this.width,
  });

  @override
  State<GoalsWidegt> createState() => _GoalsWidegtState();
}

class _GoalsWidegtState extends State<GoalsWidegt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Row(
                          children: [
                            Icon(
                              widget.iconss,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      // Container(
                      //   height: 20,
                      //   width: 20,
                      //   // child: Image.asset(Assets.workoutPending)
                      // ),
                      Text(
                        widget.goals,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 3),
                    child: Container(
                      height: 10,
                      width: 230,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 139, 188, 228)),
                      child: Row(children: [
                        Column(
                          children: [
                            Container(
                              height: 10,
                              width: widget.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
