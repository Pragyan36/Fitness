
import 'package:fintness/Widget/CategoryBestfit.dart';
import 'package:fintness/constant/Assets_directory.dart';
import 'package:fintness/view/dashboard/level/Abs/Abs.dart';
import 'package:flutter/material.dart';

class BestFit extends StatefulWidget {
  const BestFit({super.key});

  @override
  State<BestFit> createState() => _BestFitState();
}

class _BestFitState extends State<BestFit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Container(
        height: 470,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),

        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 15.0, bottom: 15),
            child: Text(
              "Best Fit For You",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
  width: double.infinity,
  height: 125,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    ),
  ),
  child: Stack(
    fit: StackFit.expand,
    children: [
      ClipRRect(
        child: Image.asset(
          Assets.bestFit,
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 47, 60, 243).withOpacity(1.0), Colors.transparent],
          
            begin: Alignment.centerLeft,
            end: Alignment.bottomCenter
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:40.0, left:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" 3 Workouts",style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),),
                Text(" Intermidate ",style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500
              ),),
            ],
          ),
        ),
      ),
    ],
  ),
),
          SizedBox(
            height: 10,
          ),
          CategoryBest(
            ontap: (){
              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Intro(title: "Abs . Intermidate",image: Assets.absBeginner, description: "These worksouts are appropriate for novices and can be done at home or in the gym using basic equimwnt. It can enhance core stability, posture, and over all abdominal strength.", level: "Intermidate", time: "10mins", title1: "Basic Cranches", title2: "Plank", title3: "Dead bug", title4: "Leg raise", title5: "Side plabk", title6: "Bicycle crunches", Focus: "Abs",);
                              },
                            ),
                          );

            },
            imageUrl: Assets.beginnerabs,
            title: "Abs . Intermidate",
            time: "30 mins",
          ),
          CategoryBest(
              ontap: (){
              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return  Intro(title: "Chest . Beginner",image: Assets.chest, description: "These worksouts are appropriate for novices and can be done at home or in the gym using basic equimwnt. It can enhance core stability, posture, and over all abdominal strength.", level: "Beginner", time: "10mins", title1: "Pushup", title2: "Incline bench press", title3: "Dumbbell bench press", title4: "Leg raise", title5: "Chest press", title6: "Decline bench press", Focus: "Chest",);
                              },
                            ),
                          );

            },
            imageUrl: Assets.bestFit,
            title: "Chest . Intermidate",
            time: "30 mins",
          ),
          CategoryBest(
              ontap: (){
              Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Intro(title: "Legs . Beginner",image: Assets.leg, description: "These worksouts are appropriate for novices and can be done at home or in the gym using basic equimwnt. It can enhance core stability, posture, and over all abdominal strength.", level: "Beginner", time: "10mins", title1: "Leg curl", title2: "Lunges", title3: "Deadlift", title4: "Leg raise", title5: "Leg press", title6: "Squat", Focus: "Leg",);
                              },
                            ),
                          );

            },
            imageUrl: Assets.bestFit,
            title: "Legs . Intermidate",
            time: "30 mins",
          )
        ]),
      ),
    );
  }
}
