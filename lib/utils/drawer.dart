// import 'package:flutter/material.dart';

// class DrawerScreen extends StatelessWidget {
//   const DrawerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Right Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 // Handle drawer item tap
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Handle drawer item tap
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.help),
//               title: Text('Help'),
//               onTap: () {
//                 // Handle drawer item tap
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
