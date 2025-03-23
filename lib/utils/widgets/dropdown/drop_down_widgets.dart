import 'package:flutter/material.dart';
import 'package:qfx_app/utils/widgets/dropdown/movie_details_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DropDownWidgets extends StatefulWidget {
  final Function(String) movieSelected;
  final List<String> items;
  final String initialValue;

  const DropDownWidgets(
      {super.key,
      required this.movieSelected,
      required this.items,
      required this.initialValue});

  @override
  State<DropDownWidgets> createState() => _DropDownWidgetsState();
}

class _DropDownWidgetsState extends State<DropDownWidgets> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 8.h,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 34, 33, 33),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 230, 228, 228)),
      ),
      child: DropdownButton<String>(
        padding: const EdgeInsets.only(top: 12, bottom: 12, right: 12),
        value: dropdownValue,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        dropdownColor: const Color.fromARGB(255, 34, 33, 33),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        underline: const SizedBox(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            setState(() {
              dropdownValue = newValue;
            });

            widget.movieSelected(newValue);
          }
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: value == "Select Movie" ? Colors.grey : Colors.white,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
