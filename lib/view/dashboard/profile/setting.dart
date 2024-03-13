// import 'package:flutter/material.dart';

// class ProfileViewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context)
//    {
//     return Text(hell)
//     // return SingleChildScrollView(
//     //   child: Center(
//     //     child: Column(
//     //       mainAxisAlignment: MainAxisAlignment.center,
//     //       children: [
//     //         const SizedBox(height: 20),
//     //         Container(
//     //           color: Color.fromARGB(255, 27, 119, 195),
//     //           height: 240,
//     //           width: double.infinity,
//     //           child: const Padding(
//     //             padding: EdgeInsets.only(top: 20.0),
//     //             child: Column(
//     //               children: [
//     //                 CircleAvatar(
//     //                   radius: 50,
//     //                   backgroundImage: AssetImage(
//     //                     'assets/avatar.jpg', // Replace with your avatar image
//     //                   ),
//     //                 ),
//     //                 SizedBox(height: 20),
//     //                 Text(
//     //                   'John Doe',
//     //                   style: TextStyle(
//     //                     fontSize: 24,
//     //                     fontWeight: FontWeight.bold,
//     //                   ),
//     //                 ),
//     //                 SizedBox(height: 10),
//     //                 Text(
//     //                   'john.doe@example.com',
//     //                   style: TextStyle(
//     //                     fontSize: 16,
//     //                     color: Colors.grey,
//     //                   ),
//     //                 ),
//     //               ],
//     //             ),
//     //           ),
//     //         ),

//     //         const SizedBox(height: 20),
//     //         const CardWidget(
//     //           icon: Icons.person,
//     //           title: "Edit Profile",
//     //           indictor: true,
//     //         ),
//     //         const CardWidget(
//     //           icon: Icons.lock_outline,
//     //           title: "Change Password",
//     //         ),
//     //         const SizedBox(
//     //           height: 15,
//     //         ),
//     //         const CardWidget(
//     //           icon: Icons.notifications_active,
//     //           title: "Notification",
//     //           indictor: true,
//     //         ),
//     //         const CardWidget(
//     //           icon: Icons.logout,
//     //           title: "Logout",
//     //           indictor: true,
//     //         ),
//     //         // Add more instances of CardWidget as needed
//     //       ],
//     //     ),
//     //   ),
//     // );
//   }
// }

// class CardWidget extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   final bool? indictor;

//   const CardWidget({
//     required this.title,
//     required this.icon,
//     this.indictor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         height: 47,
//         decoration: BoxDecoration(
//             color: Colors.white, borderRadius: BorderRadius.circular(1)),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10.0),
//                   child: Icon(
//                     icon,
//                     size: 30,
//                   ),
//                 ),
//                 // Icon before the title
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: Text(
//                     title, // Use the title passed to the widget
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const Padding(
//                   padding: EdgeInsets.only(right: 10.0),
//                   child: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.grey,
//                   ),
//                 ), // Icon after the title
//               ],
//             ),
//             indictor == true
//                 ? const Divider(
//                     thickness: 0.1,
//                     color: Colors.grey,
//                     indent: 40,
//                   )
//                 : const SizedBox()
//           ],
//         ),
//       ),
//     );
//   }
// }
