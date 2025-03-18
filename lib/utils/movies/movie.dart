import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Movies extends StatelessWidget {
  final String MovieName;
  final String Category;
  final ImageProvider images;
  const Movies(
      {super.key,
      required this.MovieName,
      required this.Category,
      required this.images});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w, top: 1.h),
          child: Container(
            child: Image(
              width: 25.w,
              height: 16.h,
              image: images,
            ),
          ),
        ),
        SizedBox(
          width: 2.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              MovieName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(Category),
          ],
        )
      ],
    );
  }
}
