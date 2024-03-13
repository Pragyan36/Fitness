
import 'package:fintness/view/dashboard/activities/DailyActivities.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Activities")),
              bottom: const TabBar(
                indicatorColor: Colors.orange,
                tabs: [
                  Tab(
                    text: 'Daily',
                  ),
                  Tab(text: 'Week'),
                  Tab(text: 'Month'),
                  Tab(text: 'Year'),
                  Tab(text: 'All time'),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                ActivitiesCard(
                    calories: "59",
                    date: "10 Mar",
                    step: "1200",
                    workoutCalories: "59",
                    workoutDuration: "0",
                    workouts: "0"),
                ActivitiesCard(
                    calories: "59",
                    date: "10 Mar - 23 Mar",
                    step: "1500",
                    workoutCalories: "59",
                    workoutDuration: "0",
                    workouts: "0"),
                ActivitiesCard(
                    calories: "59",
                    date: "10 Mar - 23 Mar",
                    step: "1500",
                    workoutCalories: "59",
                    workoutDuration: "0",
                    workouts: "0"),
                ActivitiesCard(
                    calories: "59",
                    date: "10 Mar - 23 Mar",
                    step: "1500",
                    workoutCalories: "59",
                    workoutDuration: "0",
                    workouts: "0"),
                ActivitiesCard(
                    calories: "59",
                    date: "10 Mar - 23 Mar",
                    step: "1500",
                    workoutCalories: "59",
                    workoutDuration: "0",
                    workouts: "0"),
              ],
            )));
  }
}
