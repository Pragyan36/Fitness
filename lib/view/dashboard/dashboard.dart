import 'package:fintness/constant/Assets_directory.dart';
import 'package:fintness/constant/color.dart';
import 'package:fintness/view/dashboard/activities/activities.dart';
import 'package:fintness/view/dashboard/community/community.dart';
import 'package:fintness/view/dashboard/goals/Goals.dart';
import 'package:fintness/view/dashboard/home.dart';
import 'package:fintness/view/dashboard/profile/profile.dart';

import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
    const Community(),
    const Activities(),
    const Profile(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: _screens[_currentIndex],
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                    offset: Offset(1, 3),
                  ),
                ],
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Goals()),
                );
              });
            },
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: Image.asset(
              Assets.plusIcon,
              color: Colors.white,
              height: 70,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey,
                offset: Offset(1, 3),
              )
            ],
          ),
          height: 80,
          child: ClipRRect(
            child: BottomNavigationBar(
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300),
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                if (index == 2) {
                  return;
                }
                setState(() {
                  _updateIndex(index);
                });
              },
              selectedItemColor: AppColors.primaryColor,
              selectedFontSize: 14,
              unselectedFontSize: 12,
              iconSize: 20,
              items: [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Image.asset(
                    Assets.homeIcon,
                    width: 20,
                    height: 20,
                    color: AppColors.textGrey,
                  ),
                  activeIcon: Image.asset(
                    Assets.homeIcon,
                    width: 20,
                    height: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Community",
                  icon: Image.asset(
                    Assets.communityIcon,
                    width: 20,
                    height: 20,
                    color: AppColors.textGrey,
                  ),
                  activeIcon: Image.asset(
                    Assets.communityIcon,
                    width: 20,
                    height: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Activities",
                  icon: Image.asset(
                    Assets.activitesIcon,
                    width: 20,
                    height: 20,
                    color: AppColors.textGrey,
                  ),
                  activeIcon: Image.asset(
                    Assets.activitesIcon,
                    width: 20,
                    height: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon:Icon(Icons.person_2_outlined,
                  
                   
                    color: AppColors.textGrey,
                  ),
                  
                  activeIcon: Image.asset(
                    Assets.profileIcon,
                    width: 28,
                    height: 28,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
