import 'package:flutter/material.dart';
import 'package:qfx_app/utils/slider.dart';
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
          child: DropdownMenuExample(),
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
