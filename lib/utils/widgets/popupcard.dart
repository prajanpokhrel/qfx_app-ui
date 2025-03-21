import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Popupcard extends StatelessWidget {
  const Popupcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 15.w,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 5.h,
                ),
                Container(
                  height: 4.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 86, 173, 245),
                      borderRadius: BorderRadius.circular(
                        4,
                      )),
                  child: Icon(
                    size: 20,
                    Icons.electric_bolt_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 2.h,
                ),
                Text(
                  "QUICK BUY",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 2.h,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 47.h,
            width: 85.w,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 49, 49, 49),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 2.h),
                        child: Icon(
                          size: 20,
                          Icons.electric_bolt_sharp,
                          color: const Color.fromARGB(255, 238, 157, 7),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h, top: 1.h),
                        child: Text(
                          'Book your tickets in 4 easy \n steps',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
