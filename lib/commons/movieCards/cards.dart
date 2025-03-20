import 'package:flutter/material.dart';
import 'package:qfx_app/utils/radius.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MovieCards extends StatelessWidget {
  const MovieCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 2.h,
        left: 1.h,
      ),
      child: SizedBox(
        height: 32.5.h,
        width: 47.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color.fromARGB(204, 56, 191, 245),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Advance",
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
                    child: Image(
                      fit: BoxFit.cover,
                      width: 47.w,
                      height: 25.h,
                      image: AssetImage('assets/images/pushpa2.png'),
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
                height: 5.h,
                width: 47.w,
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
                      "Pushpa2",
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
