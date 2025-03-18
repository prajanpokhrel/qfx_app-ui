import 'package:flutter/material.dart';
import 'package:qfx_app/features/homescreen/search/presentation/search.dart';
import 'package:qfx_app/utils/drawer.dart';
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
            padding: EdgeInsets.only(right: 1.h),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        SearchScreen(
                      title: 'Movies',
                    ),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0); // Slide from right
                      const end = Offset.zero;
                      const curve = Curves.easeInOut;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    transitionDuration:
                        Duration(milliseconds: 600), // Animation duration
                  ),
                );
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: GestureDetector(
              onTap: () {
                // Scaffold.of(context).openEndDrawer();
              },
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
