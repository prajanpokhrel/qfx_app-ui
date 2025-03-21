import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/cards.dart';
import 'package:qfx_app/features/homescreen/search/data/list_of_movies.dart';

class NowShowing extends StatelessWidget {
  final bool wholeScreen;
  const NowShowing({super.key, required this.wholeScreen});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (allMovies.length / 2).ceil(),
      itemBuilder: (context, index) {
        int firstIndex = index * 2;
        int secondIndex = firstIndex + 1;

        return Row(
          children: [
            Expanded(
              child: MovieCards(
                movieName: allMovies[firstIndex]['name'],
                Category: allMovies[firstIndex]['category'],
                images: AssetImage(allMovies[firstIndex]['image']),
                moviesTypes: allMovies[firstIndex]['movieTypes'],

                // advacnce: true,
              ),
            ),
            if (secondIndex < allMovies.length)
              Expanded(
                child: MovieCards(
                  movieName: allMovies[secondIndex]['name'],
                  Category: allMovies[secondIndex]['category'],
                  images: AssetImage(allMovies[secondIndex]['image']),
                  moviesTypes: allMovies[firstIndex]['movieTypes'],
                  // advacnce: true,
                ),
              )
            else
              Expanded(child: SizedBox()),
          ],
        );
      },
    );
  }
}
