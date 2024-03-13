import 'package:fintness/constant/Assets_directory.dart';
import 'package:fintness/constant/color.dart';
import 'package:fintness/view/dashboard/activities/activities.dart';
import 'package:fintness/view/dashboard/community/community.dart';
import 'package:fintness/view/dashboard/goals/Goals.dart';
import 'package:fintness/view/dashboard/home.dart';
import 'package:fintness/view/dashboard/profile/profile.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    const Community(),
    const Activities(),
    const Profile(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          size: 50,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          // Adjust the border radius as needed
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Goals(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 10,
        child: Container(
          // color: Colors.white,
          width: double.infinity,
          // color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.homeIcon,
                          height: 20,
                          width: 20,
                          color: currentTab == 0
                              ? Colors.blue
                              : AppColors.textGrey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: currentTab == 0
                                ? Colors.blue
                                : AppColors.textGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Community();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.communityIcon,
                          height: 20,
                          width: 20,
                          color: currentTab == 1
                              ? Colors.blue
                              : AppColors.textGrey,
                        ),
                        Text(
                          "Community",
                          style: TextStyle(
                            color: currentTab == 1
                                ? Colors.blue
                                : AppColors.textGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Activities();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.activitesIcon,
                          height: 20,
                          width: 20,
                          color: currentTab == 2
                              ? Colors.blue
                              : AppColors.textGrey,
                        ),
                        Text(
                          "Activities",
                          style: TextStyle(
                            color: currentTab == 2
                                ? Colors.blue
                                : AppColors.textGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_3,
                          color: currentTab == 3
                              ? Colors.blue
                              : AppColors.textGrey,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: currentTab == 3
                                ? Colors.blue
                                : AppColors.textGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<Widget>('screens', screens));
  }
}
