import 'package:flutter/material.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilder({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => const SizedBox(
                  width: 3,
                  height: 1,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 141, 138, 138))),
                )),
      );
    });
  }
}
