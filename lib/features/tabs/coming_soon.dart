// import 'package:flutter/material.dart';
// import 'package:qfx_app/commons/movieCards/cards.dart';

// class ComingSoon extends StatelessWidget {
//   const ComingSoon({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: (ComingSoon.length / 2).ceil(),
//       itemBuilder: (context, index) {
//         int firstIndex = index * 2;
//         int secondIndex = firstIndex + 1;

//         return Row(
//           children: [
//             Expanded(
//               child: MovieCards(
//                 movieName: ComingSoon[firstIndex]['name'],
//                 Category: ComingSoon[firstIndex]['category'],
//                 images: AssetImage(ComingSoon[firstIndex]['image']),
//                 // advacnce: true,
//               ),
//             ),
//             if (secondIndex < ComingSoon.length)
//               Expanded(
//                 child: MovieCards(
//                   movieName: ComingSoon[secondIndex]['name'],
//                   Category: ComingSoon[secondIndex]['category'],
//                   images: AssetImage(ComingSoon[secondIndex]['image']),
//                   // advacnce: true,
//                 ),
//               )
//             else
//               Expanded(child: SizedBox()),
//           ],
//         );
//       },
//     );
//   }
// }
