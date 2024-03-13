import 'package:fintness/constant/Assets_directory.dart';

import 'package:flutter/material.dart';

class DayWise extends StatefulWidget {
  final String day;

  DayWise({
    Key? key,
    required this.day,
  }) : super(key: key);

  @override
  State<DayWise> createState() => _DayWiseState();
}

class _DayWiseState extends State<DayWise> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 30,
      // color: Colors.black12,
      child: Column(
        children: [
          widget.day == "F"
              ? Image.asset(
                  Assets.workoutMissing,
                  fit: BoxFit.fill,
                )
              : widget.day == "S"
                  ? Image.asset(
                      Assets.workoutCompleted,
                      fit: BoxFit.fill,
                    )
                  : Image.asset(
                      Assets.workoutPending,
                      fit: BoxFit.fill,
                    ),
          Text(widget.day ?? "0")
        ],
      ),
    );
  }
}
