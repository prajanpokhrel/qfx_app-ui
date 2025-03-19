// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

// class SliderCards extends StatefulWidget {
//   const SliderCards({Key? key}) : super(key: key); // Add super.key

//   @override
//   State<SliderCards> createState() => _SliderCardsState();
// }

// class _SliderCardsState extends State<SliderCards> {
//   final List<String> imagePaths = [
//     "assets/bankcard2.png",
//     "assets/bank.png",
//   ];

//   final CarouselController _controller = CarouselController();
//   int _current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider(
//           carouselController: _controller,
//           options: CarouselOptions(
//             height: 30.h,
//             viewportFraction: 1,
//             aspectRatio: 2.0,
//             enableInfiniteScroll: true,
//             enlargeCenterPage: true,
//             scrollDirection: Axis.horizontal,
//             autoPlay: true,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _current = index;
//               });
//             },
//           ),
//           items: imagePaths.map((imagePath) {
//             return Container(
//               margin: const EdgeInsets.all(5.0),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   imagePath,
//                   fit: BoxFit.cover, // Adjust to maintain aspect ratio
//                   width: 1000,
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//         SizedBox(height: 3.h),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imagePaths.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin:
//                     const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: (_current == entry.key ? Colors.black : Colors.grey)
//                       .withOpacity(_current == entry.key ? 0.9 : 0.4),
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }
