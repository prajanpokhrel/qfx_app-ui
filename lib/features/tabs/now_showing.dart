import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/cards.dart';
import 'package:qfx_app/features/homescreen/search/data/list_of_movies.dart';

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
              MovieCards(
                movieName: allMovies[0]['name'],
                Category: allMovies[0]['category'],
                images: AssetImage(allMovies[0]['image']),
              ),
              Spacer(),
              MovieCards(
                movieName: allMovies[1]['name'],
                Category: allMovies[1]['category'],
                images: AssetImage(allMovies[1]['image']),
              ),
            ],
          ),
          Row(
            children: [
              MovieCards(
                movieName: allMovies[2]['name'],
                Category: allMovies[2]['category'],
                images: AssetImage(allMovies[2]['image']),
              ),
              Spacer(),
              MovieCards(
                movieName: allMovies[3]['name'],
                Category: allMovies[3]['category'],
                images: AssetImage(allMovies[3]['image']),
              ),
            ],
          ),
          Row(
            children: [
              MovieCards(
                movieName: allMovies[4]['name'],
                Category: allMovies[4]['category'],
                images: AssetImage(allMovies[4]['image']),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
