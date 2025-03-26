import 'package:flutter/material.dart';
import 'package:qfx_app/features/homescreen/presentation/homescreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AdsCard extends StatelessWidget {
  const AdsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.h,
      width: 10.w,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: 48.h,
            width: 80.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/banner.png")),
                // borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(12),
                //     bottomRight: Radius.circular(12)),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.only(left: 3.h, bottom: 1.h),
              child: Text(
                "Durbar  Matinee Show",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 7.h,
            width: 80.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                color: Colors.white),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homescreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 63, 61, 61),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                        child: Text(
                      "Book Now",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white),
                    )),
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
