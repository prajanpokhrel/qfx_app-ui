import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

const List<String> list = <String>['ITHARI', 'DHARAN', 'POKHARA', "KATHMANDU"];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;
  bool isSelected = false; // Track if an item is selected

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownMenu<String>(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color.fromARGB(255, 34, 33, 33),
          filled: true,
          focusColor: Colors.grey,
          contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 34, 33, 33)),
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: BoxConstraints(maxHeight: 5.h),
        ),
        width: 50.h,
        menuHeight: 30.h,
        enableSearch: false,
        initialSelection: list.first,
        leadingIcon: Padding(
          padding: EdgeInsets.only(right: 2.h),
          child: Icon(color: Colors.white, size: 25, Icons.location_on),
        ),
        textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        selectedTrailingIcon: Icon(
          size: 25,
          Icons.keyboard_arrow_up,
          color: Colors.white,
        ),
        trailingIcon: Icon(
          size: 25,
          Icons.keyboard_arrow_down,
          color: Colors.white,
        ),
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
            isSelected = true;
          });
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(
              value: value,
              label: value,
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.white;
                    }
                    return Colors.black;
                  },
                ),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.only(left: 12.h),
                ),
              ));
        }).toList(),
      ),
    );
  }
}
