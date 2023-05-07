// import 'package:flutter/material.dart';
// import 'package:animated_card/animated_card.dart';

// class ListagemScreen extends StatelessWidget {
//   final lista = List.generate(50, (index) => index);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("List Animation Example")),
//       body: ListView.builder(
//         itemCount: lista.length,
//         itemBuilder: (context, index) {
//           return AnimatedCard(
//             direction: AnimatedCardDirection.left, //Initial animation direction
//             initDelay: Duration(milliseconds: 0), //Delay to initial animation
//             duration: Duration(seconds: 1), //Initial animation duration
//             onRemove: () => lista.removeAt(index), //Implement this action to active dismiss
//             curve: Curves.bounceOut, //Animation curve
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: Card(
//                 elevation: 5,
//                 child: ListTile(
//                   title: Container(
//                     height: 150,
//                     child: Center(child: Text("$index")),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }