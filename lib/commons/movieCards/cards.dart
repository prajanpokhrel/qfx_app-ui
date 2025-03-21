import 'package:flutter/material.dart';
import 'package:qfx_app/utils/radius.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MovieCards extends StatelessWidget {
  final String movieName;
  final String Category;
  final ImageProvider images;
  final bool isadvacnce;
  const MovieCards({
    super.key,
    required this.movieName,
    required this.Category,
    required this.images,
    this.isadvacnce = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 2.h,
        left: 1.h,
      ),
      child: SizedBox(
        height: isadvacnce == true ? 32.5.h : 30.5.h,
        width: 47.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color.fromARGB(204, 56, 191, 245),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isadvacnce)
                Center(
                  child: Text(
                    "advance",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: isadvacnce == true
                            ? Radius.circular(0)
                            : Radius.circular(8),
                        topRight: isadvacnce == true
                            ? Radius.circular(0)
                            : Radius.circular(8)),
                    child: Image(
                      fit: BoxFit.cover,
                      width: 48.w,
                      height: 25.h,
                      image: images,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.h, bottom: 22.h),
                    height: 3.h,
                    width: 8.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromARGB(255, 7, 168, 128),
                    ),
                    child: Column(
                      children: [
                        Text(
                          Category,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Positioned(
                    left: 0,
                    child: RadiusDesign(isRight: false),
                  ),
                  Positioned(
                    right: 0,
                    child: RadiusDesign(isRight: true),
                  ),
                ],
              ),
              Container(
                height: isadvacnce == true ? 5.h : 5.5.h,
                width: 48.w,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 61, 61),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      movieName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "| Action, Drama",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
