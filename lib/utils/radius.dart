import 'package:flutter/material.dart';

class RadiusDesign extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final isRight;

  const RadiusDesign({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 30,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 39, 39, 39),
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))
              : const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
        ),
      ),
    );
  }
}
