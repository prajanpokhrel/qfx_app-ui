import 'package:flutter/material.dart';

class DrawerFeatures extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const DrawerFeatures({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: ontap,
            child: Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.1,
          height: 30,
          indent: 100,
          endIndent: 100,
        ),
      ],
    );
  }
}
