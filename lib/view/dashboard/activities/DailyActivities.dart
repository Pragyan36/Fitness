
import 'package:fintness/constant/Assets_directory.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ActivitiesCard extends StatefulWidget {
  final String date;
  final String step;
  final String calories;
  final String workoutDuration;
  final String workoutCalories;
  final String workouts;

  const ActivitiesCard({
    super.key,
    required this.calories,
    required this.date,
    required this.step,
    required this.workoutCalories,
    required this.workoutDuration,
    required this.workouts,
  });

  @override
  State<ActivitiesCard> createState() => _ActivitiesCardState();
}

class _ActivitiesCardState extends State<ActivitiesCard> {
  final List<String> dayNames = [
    'Sat',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 0, right: 10),
            child: Row(
              children: [
                Icon(Icons.date_range),
                SizedBox(width: 10),
                Text(
                  widget.date,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 7.0, right: 10, left: 10, bottom: 10),
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                        ),
                      )),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: const Color(0xff37434d),
                      width: 1,
                    ),
                  ),
                  minX: 0,
                  maxX: 7,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 0),
                        FlSpot(1, 1),
                        FlSpot(2, 4),
                        FlSpot(3, 2),
                        FlSpot(4, 5),
                        FlSpot(5, 3),
                        FlSpot(6, 4),
                      ],
                      isCurved: true,
                      // colors: [Colors.blue],
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 30, bottom: 8, right: 8),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Steps",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                    Container(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(
                                          Assets.footstep,
                                          fit: BoxFit.fill,
                                          color: Colors.blue,
                                        ))
                                  ]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 10.0, left: 30, bottom: 8, right: 8),
                              child: Column(
                                children: [
                                  Text(
                                    "1,200",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "steps",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 30, bottom: 8, right: 8),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Calories",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    ),
                                    Container(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(
                                          Assets.fire,
                                          fit: BoxFit.fill,
                                        ))
                                  ]),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  top: 8.0, left: 30, bottom: 8, right: 8),
                              child: Column(
                                children: [
                                  Text(
                                    "56",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    "Kcal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Flexible(
                child: Stack(
                  children: [
                    Container(
                        height: 230,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 0, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 30, bottom: 8, right: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Heart Rate",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Container(
                                            height: 20,
                                            width: 20,
                                            child: Image.asset(
                                              Assets.heart,
                                              fit: BoxFit.fill,
                                              color: Colors.red,
                                            )),
                                      )
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                        height: 170,
                                        width: 250,
                                        color: Colors.black12,
                                        child: Image.asset(
                                          Assets.heartline,
                                          fit: BoxFit.fill,
                                        )),
                                    Positioned(
                                      top: 110,
                                      left: 0,
                                      child: Container(
                                        height: 70,
                                        width: 50,
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Text(
                                              "80",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              "bpm",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8.0, left: 20, right: 20, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Workouts",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Duration",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                              TextSpan(
                                text: widget.workoutDuration,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),
                              const TextSpan(
                                text: 'min',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ])),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Calories",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                              TextSpan(
                                text: widget.workoutCalories,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),
                              const TextSpan(
                                text: 'min',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ])),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Workouts",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                              TextSpan(
                                text: widget.workouts,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),
                              const TextSpan(
                                text: 'min',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ])),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
