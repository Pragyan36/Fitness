
import 'package:fintness/Widget/radiobutton.dart';
import 'package:fintness/constant/GoalsButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GoalSetting extends StatefulWidget {
  const GoalSetting({super.key});

  @override
  State<GoalSetting> createState() => _GoalSettingState();
}

class _GoalSettingState extends State<GoalSetting> {
  final List<String> myItems = [
    "Cycling",
    "Sbs",
    "Chest",
    "Squating",
    "Jogging",
    "Lifting",
    "Plates",
    "Deadlifts",
    "Others",
  ];
  int selectedIndex = -1;
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goals Setting"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10.0, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Create a personal target",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Text(
              "Setup a persional fitness target e.g cycling",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "What is your goals?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              // color: Colors.amber,
              child: SizedBox(
                child: MasonryGridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),

                  // Adjust as needed
                  mainAxisSpacing: 10.0,

                  // Adjust as needed

                  itemCount: myItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1,
                              color: selectedIndex == index
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            color: selectedIndex == index
                                ? Colors.blue
                                : Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                myItems[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              // color: Colors.black26,
              // color: Colors.black38,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "When time of the day should it be?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10), // Adjust the spacing as needed

                  // Adding the Tex
                  //hetField with specified properties
                  Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '00:00',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey, // Set the border color to gray
                          ),
                        ),
                      ),
                    ),
                  ),

                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "When time of the day should it be?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RadioButtongoal(label: "Daily", value: 0),
                        SizedBox(
                          width: 5,
                        ),
                        RadioButtongoal(label: "Week", value: 1),
                        SizedBox(
                          width: 5,
                        ),
                        RadioButtongoal(label: "Month", value: 2)
                      ],
                    )
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Goalsbutton(
              ontap: () {},
              title: "Add new goal",
            )
          ]),
        ),
      ),
    );
  }
}
