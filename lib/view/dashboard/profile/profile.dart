
import 'package:fintness/constant/Assets_directory.dart';
import 'package:fintness/constant/color.dart';
import 'package:fintness/view/dashboard/notificaton.dart';
import 'package:fintness/view/dashboard/profile/Generalsetting.dart';
import 'package:fintness/view/dashboard/profile/edit.dart';
import 'package:fintness/view/dashboard/profile/favorite.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Profile")),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Container(
                    height: 270,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: 120,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: const Text("Pragyan Maharjan",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        Container(
                          height: 70,
                          // color: Colors.amberAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "30",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "Workout",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 0.5,
                                    // thickness: 2,
                                    color: Colors.grey,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Workout",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    width: 0.5,
                                    // thickness: 2,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 18.0),
                                    child: Column(children: [
                                      Text(
                                        "30",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Workout",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ]),
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 160,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Assets.user),
                      radius: 50,
                      backgroundColor: Colors.blue,
                    )),
                Positioned(
                  top: 60,
                  left: 280,
                  child: GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the other page when the FloatingActionButton is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, right: 8, bottom: 8, left: 10),
                          child: Row(children: [
                            Text(
                              "Edit profile ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(Icons.mode_edit_outline)
                          ]),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CardWidget(
              title: "Reminder",
              icon: Icons.notifications_on,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WishListCard(
                        imageUrl: Assets.advance,
                        time: "10mins",
                        title: "Abs Beginner",
                        page: 'Reminder',
                      );
                    },
                  ),
                );
              },
            ),
            CardWidget(
              title: "My favorite",
              icon: Icons.favorite,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WishListCard(
                      imageUrl: Assets.leg,
                      time: "10mins",
                      title: "Abs Beginner",
                      page: 'My favorite"',
                    ),
                  ),
                );
              },
            ),
            CardWidget(
              title: "Notification",
              icon: Icons.notifications_on,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationView(),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 10, bottom: 10, right: 20),
              child: Text(
                "Setting",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            CardWidget(
              title: "General Setting",
              icon: Icons.settings,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralSetting()),
                );
              },
            ),
            SizedBox(
              height: 8,
            ),
            CardWidget(
              title: "Language",
              icon: Icons.language,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralSetting()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;

  const CardWidget({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: AppColors.backgroundScaffoldColor,
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 8.0, bottom: 8, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          // padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Colors.transparent),
                              color: Colors.blue),
                          child: Icon(
                            widget.icon,
                            color: Color(
                                0xffE8EFF4), // Change the icon color as needed
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          widget.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
