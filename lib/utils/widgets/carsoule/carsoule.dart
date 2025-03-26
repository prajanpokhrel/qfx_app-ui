import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> items = [
    "banner1.jpg",
    "bann2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          // carouselController: _controller,
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            initialPage: 0,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            scrollDirection: Axis.horizontal,
            reverse: false,
            viewportFraction: 1.0,
            height: 16.h,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/$i"),
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 1.h),
        // Dot Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < items.length; i++)
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: _current == i ? 16.0 : 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == i
                      ? const Color.fromARGB(255, 65, 63, 63)
                      : Colors.grey,
                ),
              ),
          ],
        ),
        SizedBox(height: 3.h),
      ],
    );
  }
}
