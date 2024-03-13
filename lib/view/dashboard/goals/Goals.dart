import 'package:fintness/constant/GoalsButton.dart';
import 'package:fintness/constant/Goals_widget.dart';
import 'package:fintness/view/dashboard/goals/Goalsetting.dart';

import 'package:flutter/material.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  final List<String> myItems = [
    "Daily",
    "Beginner",
    " Intermidiate",
    "Advance"
  ];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Text(
              "Goals",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 10, right: 10, bottom: 8),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      // color: Colors.black45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              top: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "57%",
                                  style: TextStyle(fontSize: 40),
                                ),
                                const SizedBox(
                                  width: 200,
                                ),
                                Container(
                                  height: 30,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.ios_share,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "Share",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: Text(
                              "Goal Progress",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              height: 10,
                              width: 230,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color.fromARGB(255, 139, 188, 228)),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.blue),
                                    )
                                  ],
                                )
                              ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 0,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
// Adjust the width as needed
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: selectedIndex == index
                              ? Colors.blue
                              : Colors.black12,
                        ),
                        color:
                            selectedIndex == index ? Colors.blue : Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(historyState.icons[index]),
                            const SizedBox(width: 8),
                            Text(
                              myItems[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // ContainerCard(
                    //           title: historyState.titles[index],
                    //         ),
                  );
                },

                // return ContainerCard(
                //   title: historyState.titles[index],
                //   // icon: consultState.icons[index],
                // );
                // },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const GoalsWidegt(
                title: "Step Count",
                iconss: Icons.add,
                goals: "1000/2000",
                width: 150),

            const GoalsWidegt(
                title: "Calories Burned",
                iconss: Icons.add,
                goals: "100/200",
                width: 100),
            const SizedBox(
              height: 10,
            ),
            Goalsbutton(
              title: "Create new goal",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GoalSetting()), // Replace AnotherPage with the page you want to navigate to
                );
              },
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 70,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Row(children: [
            //       Column(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Container(
            //                 height: 50,
            //                 width: 50,
            //                 decoration: BoxDecoration(
            //                   color: Colors.grey,
            //                   borderRadius: BorderRadius.circular(10),
            //                 ),
            //                 child: const Center(
            //                   child: SizedBox(
            //                     height: 30,
            //                     width: 30,
            //                     child: Row(
            //                       children: [
            //                         Icon(
            //                           Icons.add,
            //                           color: Colors.blue,
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 )),
            //           ),
            //         ],
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 20.0),
            //         child: Container(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Stepcount",
            //                 style: TextStyle(
            //                     fontSize: 16, fontWeight: FontWeight.w500),
            //               ),
            //               Row(
            //                 children: [
            //                   // Container(
            //                   //   height: 20,
            //                   //   width: 20,
            //                   //   // child: Image.asset(Assets.workoutPending)
            //                   // ),
            //                   Text(
            //                     "10000/2000 Steps",
            //                     style: TextStyle(
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400,
            //                         color: Colors.grey),
            //                   ),
            //                 ],
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 0.0, top: 3),
            //                 child: Container(
            //                   height: 10,
            //                   width: 230,
            //                   decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(5),
            //                       color:
            //                           const Color.fromARGB(255, 139, 188, 228)),
            //                   child: Row(children: [
            //                     Column(
            //                       children: [
            //                         Container(
            //                           height: 10,
            //                           width: 150,
            //                           decoration: BoxDecoration(
            //                               borderRadius:
            //                                   BorderRadius.circular(5),
            //                               color: Colors.blue),
            //                         )
            //                       ],
            //                     )
            //                   ]),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       )
            //     ]),
            //   ),
            // )
          ]),
        ));
  }
}
