import 'package:fintness/Widget/BestimageCategory.dart';
import 'package:fintness/Widget/Dublicateofbestimagecategory.dart';
import 'package:fintness/Widget/day_wiseWidget.dart';
import 'package:fintness/constant/Assets_directory.dart';
import 'package:fintness/view/dashboard/Bestfit.dart';
import 'package:fintness/view/dashboard/Metrics.dart';
import 'package:fintness/view/dashboard/goals/Goals.dart';
import 'package:fintness/view/dashboard/notificaton.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 60,
                width: double.infinity,
                // color: Colors.black26,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 8),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          Assets.user,
                          fit: BoxFit.cover,
                          // You can adjust the fit based on your requirements
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TUESDAY JAN 20",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Text("Hi, Pragyan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: GestureDetector(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue,
                              width: 0.5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1),
                            child: Image.asset(
                              Assets.notification,

                              // width: 10,
                              // height: 10,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return NotificationView();
                              },
                            ),
                          );
                        },
                      )),
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, right: 15, left: 15),
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFE9EFF5),
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
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context        ) => Goals(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 30.0, top: 5, bottom: 5),
                            child: Text(
                              "Daily Goals",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 5.0, bottom: 5, right: 30),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30.0, top: 5, bottom: 5),
                              child: Container(
                                height: 60,
                                width: 80,
                                // color: Colors.grey,
                                child: const Column(
                                  children: [
                                    Text(
                                      "4/7",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text("Completed")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        DayWise(day: "S"),
                        const SizedBox(
                          width: 4,
                        ),
                        DayWise(day: "M"),
                        const SizedBox(
                          width: 4,
                        ),
                        DayWise(day: "T"),
                        const SizedBox(
                          width: 4,
                        ),
                        DayWise(day: "W"),
                        const SizedBox(
                          width: 4,
                        ),
                        DayWise(day: "T"),
                        const SizedBox(
                          width: 3,
                        ),
                        DayWise(day: "F"),
                        const SizedBox(
                          width: 4,
                        ),
                        DayWise(day: "S"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Metrics(),
            const BestFit(),
            ImageCategory(
              imagurl: Assets.hand,
            ),
            DuplicateImageCategory(
              imagurl: Assets.advance,
            ),
          ]),
        ),
      ),
    );
  }
}
