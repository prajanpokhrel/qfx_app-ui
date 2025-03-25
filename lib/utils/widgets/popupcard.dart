import 'package:flutter/material.dart';
import 'package:qfx_app/utils/widgets/dropdown/drop_down_widgets.dart';
import 'package:qfx_app/utils/widgets/dropdown/movie_details_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Popupcard extends StatefulWidget {
  const Popupcard({super.key});

  @override
  State<Popupcard> createState() => _PopupcardState();
}

class _PopupcardState extends State<Popupcard> {
  //select value for each dropdowns
  String selectedMovie = "Select Movie";
  String selectedCinema = "Select Cinema";
  String selectedDate = "Select Date";
  String selectedTime = "Select Time";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: 10.w,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
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
                    ),
                  ),
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
                ),
              ],
            ),
          ),
          Container(
            height: 47.h,
            width: 85.w,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 49, 49, 49),
            ),
            child: SingleChildScrollView(
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
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  DropDownWidgets(
                    movieSelected: (String movie) {
                      setState(() {
                        selectedMovie = movie;
                      });
                    },
                    items: MovieList,
                    initialValue: selectedMovie,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  DropDownWidgets(
                    movieSelected: (String cinema) {
                      setState(() {
                        selectedCinema = cinema;
                      });
                    },
                    items: MovieHall,
                    initialValue: selectedCinema,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  DropDownWidgets(
                    movieSelected: (String date) {
                      setState(() {
                        selectedDate = date;
                      });
                    },
                    items: Date,
                    initialValue: selectedDate,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  DropDownWidgets(
                    movieSelected: (String time) {
                      setState(() {
                        selectedTime = time;
                      });
                    },
                    items: Time,
                    initialValue: selectedTime,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 10.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: const Color.fromARGB(255, 49, 49, 49),
                ),
                child: Center(
                  child: SizedBox(
                    width: 60.w,
                    height: 7.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            (selectedMovie.trim() != "Select Movie" &&
                                    selectedCinema.trim() != "Select Cinema" &&
                                    selectedDate.trim() != "Select Date" &&
                                    selectedTime.trim() != "Select Time")
                                ? Colors.blue
                                : Colors.grey,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: (selectedMovie.trim() != "Select Movie" &&
                              selectedCinema.trim() != "Select Cinema" &&
                              selectedDate.trim() != "Select Date" &&
                              selectedTime.trim() != "Select Time")
                          ? () {
                              print("Booking is in progress......");
                            }
                          : null,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Icon(
                              color: Colors.white,
                              Icons.check_circle,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          Text(
                            "Book Now",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
