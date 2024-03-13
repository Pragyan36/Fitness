
import 'package:fintness/view/dashboard/profile/profile.dart';
import 'package:flutter/material.dart';

class GeneralSetting extends StatefulWidget {
  const GeneralSetting({super.key});

  @override
  State<GeneralSetting> createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('General Setting'))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              title: "Dark Mode",
              icon: Icons.language,
              onTap: () {},
            ),
            CardWidget(
              title: "Notification",
              icon: Icons.notifications_on,
              onTap: () {},
            ),
            CardWidget(
              title: "Devices",
              icon: Icons.mobile_friendly,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
