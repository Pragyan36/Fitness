import 'package:fintness/constant/Assets_directory.dart';
import 'package:flutter/material.dart';

class Metrics extends StatefulWidget {
  const Metrics({super.key});

  @override
  State<Metrics> createState() => _MetricsState();
}

class _MetricsState extends State<Metrics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272,
      width: double.infinity,
      // color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0, bottom: 15),
            child: Text(
              "Metrics",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          // SizedBox(height: 7),
          Row(children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Column(
                  children: [
                    Container(
                      height: 110,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 11.0, left: 15, bottom: 8, right: 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Steps",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Container(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                        Assets.footstep,
                                        fit: BoxFit.fill,
                                        color: Colors.blue,
                                      ))
                                ]),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 15, bottom: 8, right: 8),
                            child: Column(
                              children: [
                                Text(
                                  "1,200",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Steps",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.grey),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 11.0, left: 15, bottom: 8, right: 8),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Calories",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Container(
                                      height: 25,
                                      width: 25,
                                      child: Image.asset(
                                        Assets.fire,
                                        fit: BoxFit.fill,
                                      ))
                                ]),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                top: 8.0, left: 15, bottom: 8, right: 8),
                            child: Column(
                              children: [
                                Text(
                                  "56",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Kcal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.grey),
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
            Flexible(
              child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 0, bottom: 0, right: 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 15, bottom: 8, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Heart Rate",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Container(
                                      height: 25,
                                      width: 25,
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Bpm",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
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
            ),
          ])
        ],
      ),
    );
  }
}
