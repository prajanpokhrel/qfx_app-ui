import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // int _current = 0;
  // final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            initialPage: 0,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            scrollDirection: Axis.horizontal,
            reverse: false,
            viewportFraction: 1.0,
            height: 20.h,
          ),
          items: <String>[
            "marco.png",
            "OUT.jpg",
            "pushpa2.png",
            "laaj.png",
            "chava.jpg"
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    image: DecorationImage(
                        image: AssetImage("assets/images/$i"),
                        fit: BoxFit.fill),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 3.h),
      ],
    );
  }
}
