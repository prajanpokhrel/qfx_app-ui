import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NowShowing extends StatelessWidget {
  final bool wholeScreen;
  const NowShowing({super.key, required this.wholeScreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 2.h,
                left: 1.h,
              ),
              child: SizedBox(
                height: 30.h,
                width: 40.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color.fromARGB(204, 56, 191, 245)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Advance",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipRRect(
                        child: Image(
                          fit: BoxFit.cover,
                          width: 40.w,
                          height: 25.h,
                          image: AssetImage('assets/images/pushpa2.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
