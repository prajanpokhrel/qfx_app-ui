import 'package:flutter/material.dart';

class RadiusDesign extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final isRight;

  const RadiusDesign({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isRight == true
                ? const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12))
                : const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
      ),
    );
  }
}
