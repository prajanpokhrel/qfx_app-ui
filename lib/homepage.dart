// import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
// import 'package:flutter/material.dart';
// import 'package:qfx_app/utils/movies/movie.dart';

// class SearchScreen extends StatelessWidget {
//   SearchScreen({Key? key, required this.title}) : super(key: key);

//   final String title;
//   final searchText = ValueNotifier<String>('');
//   final words = ("hello i am here he ").split(' ');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(251, 252, 248, 248),
//       appBar: AppBarWithSearchSwitch(
//         elevation: 10,
//         shadowColor: Colors.black.withOpacity(0.5),
//         backgroundColor: Colors.white,
//         fieldHintText: "Movie,Generes, & Languages",

//         // isSearchMode: true, // Set this to true to show the search bar immediately
//         onChanged: (text) {
//           searchText.value = text;
//         },
//         animation: AppBarAnimationSlideLeft.call,
//         appBarBuilder: (context) {
//           return AppBar(
//             leading: IconButton(
//               icon: Icon(Icons.arrow_back_ios),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             title: Text(title),
//             actions: const [
//               AppBarSearchButton(),
//             ],
//           );
//         },
//       ),

//       body: Column(
//         children: [
//           Movies(),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//             height: 30,
//             indent: 80,
//             endIndent: 80,
//           ),
//           Movies(),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//             height: 30,
//             indent: 80,
//             endIndent: 80,
//           ),
//           Movies(),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//             height: 30,
//             indent: 80,
//             endIndent: 80,
//           ),
//           Movies(),
//           Divider(
//             color: Colors.grey,
//             thickness: 0.5,
//             height: 30,
//             indent: 80,
//             endIndent: 80,
//           ),
//         ],
//       ),
//       // body: Center(
//       //   child: SingleChildScrollView(
//       //     child: AnimatedBuilder(
//       //       animation: Listenable.merge([searchText]),
//       //       builder: (BuildContext context, _) {
//       //         return Wrap(
//       //           children: [
//       //             for (var i = 0; i < words.length; i++)
//                     // if (words[i].contains(searchText.value))
//       //                 SizedBox(
//       //                   height: 110,
//       //                   width: 110,
//       //                   child: Card(
//       //                     child: Column(
//       //                       children: [
//       //                         Expanded(
//       //                           child: Center(
//       //                             child: Text(
//       //                               words[i],
//       //                               style: Theme.of(context)
//       //                                   .textTheme
//       //                                   .headlineSmall,
//       //                               textAlign: TextAlign.center,
//       //                             ),
//       //                           ),
//       //                         ),
//       //                       ],
//       //                     ),
//       //                   ),
//       //                 ),
//       //           ],
//       //         );
//       //       },
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }
