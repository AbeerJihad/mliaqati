// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// import 'package:flutter/material.dart';

// import 'ExercisesDetiles.dart';

// class Exercises extends StatelessWidget {
//   const Exercises({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 height: 180,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   color: Colors.black,
//                   image: DecorationImage(
//                       image: AssetImage(
//                         "images/image 84.png",
//                       ),
//                       fit: BoxFit.cover),
//                 ),
//               ),
//               Positioned(
//                 top: 30,
//                 left: 5,
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Icon(
//                     Icons.arrow_forward,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               Positioned(
//                   child: Text(
//                 "تمارين رياضية",
//                 style: TextStyle(color: Colors.white, fontSize: 30),
//               )),
//             ],
//           ),
//           Expanded(child: MainexErcises())
//         ],
//       ),
//     );
//   }
// }

// class MainexErcises extends StatelessWidget {
//   const MainexErcises({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.all(20),
//       child: Expanded(
//         child: ListView.builder(
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ExercisesDetiles(),
//                   ),
//                 );
//               },
//               child: Container(
//                 margin: const EdgeInsets.all(15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "images/YOGA3 1.png",
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "اليوغا الصباحية للجسم الكامل",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 height: 2),
//                           ),
//                           SizedBox(height: 10),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Text(
//                                     "اليوغا ",
//                                   ),
//                                   Divider(
//                                     height: 15,
//                                     thickness: 10,
//                                     color: Colors.black,
//                                   ),
//                                   Text("25 دقيقة"),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Image.asset("images/image 72.png"),
//                                   Image.asset("images/image 72.png"),
//                                   Image.asset("images/image 72.png"),
//                                   Image.asset("images/image 72.png"),
//                                   Image.asset("images/image 72.png"),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 3,
//                       blurRadius: 4,
//                       offset: Offset(0, 4), // changes position of shadow
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
