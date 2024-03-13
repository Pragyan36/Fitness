import 'package:fintness/constant/Assets_directory.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
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
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Community",
            style: TextStyle(fontWeight: FontWeight.w500),
          )),
          bottom: TabBar(
            indicatorWeight: 0, 
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF2F9FF),
              
              border: Border(
                top: BorderSide(color: Colors.blue, width: 2.0),
                bottom: BorderSide(color: Colors.blue, width: 2.0),
                left: BorderSide(color: Colors.blue, width: 2.0),
                right: BorderSide(color: Colors.blue, width: 2.0),
                
              ),
            ),
            labelColor: Colors.blue, 
            tabs: [
              Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 45.0, right: 45.0),
                  child: Tab(
                    text: 'Social Feeds',
                    
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 45.0, right: 45.0),
                  child: Tab(text: 'Challenges'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                          child: Row(
                            children: [
                              // First column with image
                              Container(
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        10)), // Adjust the width as needed
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    child: Image.asset(Assets.user),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),

                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none,
                                      hintText: 'Enter text...',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    const CommunityBlog(
                      imageUrl: Assets.bestFit,
                      profileUrl: Assets.userblog,
                      time: "12:00pm",
                      name: "Nikhil Shrestha",
                      body:
                          "mid-workout vibes! share your sweat session with us and lets crush it together",
                    ),
                    const CommunityBlog(
                      imageUrl: Assets.bestFit,
                      profileUrl: Assets.userblog,
                      time: "12:00pm",
                      name: "Nikhil Shrestha",
                      body:
                          "mid-workout vibes! share your sweat session with us and lets crush it together",
                    ),
                  ],
                ),
              ),
            ),
            const SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 15.0, right: 15, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Text(
                        "Ready to achive that 'desired' dream body?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      child: Text(
                        "Select a communityt challages of your choice and add some spark to your Workout Rotine!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ),
                    ChallengesBlog(
                        date: " Feb 23 -  Mar12",
                        joinedChallanges: "315 Challenges joined",
                        imageUrl: Assets.bestFit,
                        body:
                            "This exercise focuse on techiques designed ti improve stamina and endurance during sexual activities, extending the during before climax.",
                        heading: "Last longer in bed exercise"),
                    ChallengesBlog(
                        date: " Feb 23 -  Mar12",
                        joinedChallanges: "315 Challenges joined",
                        imageUrl: Assets.bestFit,
                        body:
                            "This exercise focuse on techiques designed ti improve stamina and endurance during sexual activities, extending the during before climax.",
                        heading: "Last long in bed exercise")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChallengesBlog extends StatelessWidget {
  final String date;
  final String joinedChallanges;
  final String heading;
  final String imageUrl;
  final String body;
  const ChallengesBlog({
    required this.date,
    required this.joinedChallanges,
    required this.imageUrl,
    required this.body,
    required this.heading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 8, bottom: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
              child: Container(
                height: 240,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.0, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    joinedChallanges,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      body,

                      style: TextStyle(
                        color: Colors.black,
                      ),
                      // style: const TextStyle(
                      //   color: Colors.grey,
                      //   fontWeight: FontWeight.w400,
                      //   fontSize: 14,
                      // ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      // indent: 7,
                      // endIndent: 7,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class CommunityBlog extends StatelessWidget {
  final String name;
  final String body;
  final String time;
  final String imageUrl;
  final String profileUrl;

  const CommunityBlog({
    required this.name,
    required this.time,
    required this.imageUrl,
    required this.profileUrl,
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8, right: 15, left: 15),
                      child: Container(
                        height: 25,
                        width: 25,
                        child: ClipRRect(
                          child: Image.asset(profileUrl),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                Text(
                  time,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, right: 15, left: 15),
              child: Container(
                child: Text(body),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8, right: 15, left: 15),
              child: Container(
                height: 200,
                // color: Colors.black45,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: ClipRRect(
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text("100"),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message),
                ),
                SizedBox(
                  width: 3,
                ),
                Text("100"),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.screen_share),
                ),
                SizedBox(
                  width: 3,
                ),
                Text("100"),
              ],
            ),
            Divider(
              thickness: 0.5,
              indent: 10,
              endIndent: 10,
            )
          ],
        ),
      ),
    );
  }
}
