import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/cards.dart';
import 'package:qfx_app/utils/radius.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NowShowing extends StatelessWidget {
  final bool wholeScreen;
  const NowShowing({super.key, required this.wholeScreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MovieCards(),
            Spacer(),
            MovieCards(),
          ],
        ),
      ],
    );
  }
}
