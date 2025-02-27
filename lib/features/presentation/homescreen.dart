import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 63, 61, 61),

        toolbarHeight: 70, // Increases AppBar height
        leadingWidth: 100,
        leading: Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Image(
            width: 10.w,
            height: 8.h,
            fit: BoxFit.contain,
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 34, 33, 33),
              borderRadius: BorderRadius.circular(7)),
          width: 60.w,
          height: 5.h,
          child: Padding(
            padding: EdgeInsets.all(1.w),
            child: Row(
              children: [
                Icon(
                  color: Colors.white,
                  Icons.location_on,
                  size: 6.w,
                ),
                SizedBox(
                  width: 1.h,
                ),
                Text(
                  "Kathmandu",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 1.h,
                ),
                Icon(
                  color: Colors.white,
                  Icons.arrow_drop_down_sharp,
                  size: 6.w,
                )
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
