import 'package:flutter/material.dart';
import 'package:qfx_app/features/offers/widgets/ads_card.dart';
import 'package:qfx_app/utils/widgets/popupcard.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OfferCards extends StatelessWidget {
  const OfferCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/black.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 8.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h, right: 22.h),
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 63, 61, 61),
                    ),
                    child: Center(
                      child: Text(
                        "CINEMA OFFERS",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 2.h, right: 2.h),
            height: 15.h,
            width: 95.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black.withOpacity(0.4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: Divider(
                          color: Colors.blue,
                          thickness: 2,
                          height: 40,
                          indent: 14,
                          endIndent: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.h, right: 16.h),
                      child: Text(
                        "CINEMA OFFERS",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "CINEMA OFFERS",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      child: AdsCard(),
                    );
                  });
            },
            child: Container(
              margin: EdgeInsets.only(right: 22.h),
              height: 18.h,
              width: 40.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/banner.png"),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
