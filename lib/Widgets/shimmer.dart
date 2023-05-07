// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:tarfeeh/Widgets/text_widgets.dart';
//
// class shimmer extends StatelessWidget {
//   const shimmer({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: Column(
//             children: [
//               Align(
//                 alignment: AlignmentDirectional.topStart,
//                 child: TextWidget(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     font: 'ROBOTO',
//                     text: 'Home',
//                     size: 22),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 height: 160,
//                 width: double.infinity,
//                 color: Colors.white,
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextWidget(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       font: '',
//                       text: AppLocalizations.of(context)!.store,
//                       size: 17),
//                   TextWidget(
//                       fontWeight: FontWeight.normal,
//                       color: Colors.white,
//                       font: '',
//                       text: AppLocalizations.of(context)!.viewAll,
//                       size: 11),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Align(
//                 alignment: AlignmentDirectional.topStart,
//                 child: TextWidget(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     font: '',
//                     text: 'category'.toUpperCase(),
//                     size: 18),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 height: 70,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 10,
//                     itemBuilder: (context, index) {
//                       return Column(children: [
//                         Container(
//                           margin: const EdgeInsets.symmetric(horizontal: 10),
//                           height: 50,
//                           width: 50,
//                           color: Colors.white,
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Container(
//                           width: 10,
//                           height: 5,
//                           color: Colors.white,
//                         )
//                       ]);
//                     }),
//               ),
//               SizedBox(
//                 height: 68,
//                 child: ListView.builder(
//                     itemCount: 2,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: const EdgeInsets.symmetric(
//                             horizontal: 10, vertical: 3),
//                         width: 170,
//                         child: Stack(children: [
//                           Align(
//                             alignment: Alignment.centerRight,
//                             child: Container(
//                               width: 150,
//                               decoration: BoxDecoration(
//                                 boxShadow: const [
//                                   BoxShadow(
//                                       color: Colors.black12,
//                                       offset: Offset(0, 3),
//                                       blurRadius: 6),
//                                 ],
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                             ),
//                           ),
//                           PositionedDirectional(
//                             top: 8,
//                             start: 1,
//                             child: Container(
//                               clipBehavior: Clip.antiAlias,
//                               height: 43,
//                               width: 43,
//                               decoration: const BoxDecoration(
//                                   color: Colors.white,
//                                   shape: BoxShape.circle,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.black12,
//                                       blurRadius: 6,
//                                       offset: Offset(0, 3),
//                                     )
//                                   ]),
//                               child: const CircleAvatar(
//                                 radius: 20,
//                                 backgroundColor: Colors.white,
//                               ),
//                             ),
//                           ),
//                           PositionedDirectional(
//                             top: 20,
//                             start: 50,
//                             child: Column(
//                               children: [
//                                 Container(
//                                   height: 8,
//                                   width: 20,
//                                   color: Colors.white,
//                                 ),
//                                 Container(
//                                   height: 8,
//                                   width: 5,
//                                   color: Colors.white,
//                                 ),
//                               ],
//                             ),
//                           )
//                         ]),
//                       );
//                     }),
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               Container(
//                 height: 170,
//                 width: double.infinity,
//                 color: Colors.white,
//               ), // Water
//             ],
//           ),
//         ),
//         baseColor: Colors.grey.shade300,
//         highlightColor: Colors.grey.shade100);
//   }
// }
