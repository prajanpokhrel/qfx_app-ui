import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/cards.dart';

class NowShowing extends StatelessWidget {
  final bool wholeScreen;
  const NowShowing({super.key, required this.wholeScreen});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              MovieCards(),
              Spacer(),
              MovieCards(),
            ],
          ),
          Row(
            children: [
              MovieCards(),
              Spacer(),
              MovieCards(),
            ],
          ),
        ],
      ),
    );
  }
}
