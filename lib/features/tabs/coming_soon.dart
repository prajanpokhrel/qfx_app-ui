import 'package:flutter/material.dart';
import 'package:qfx_app/commons/movieCards/cards.dart';
import 'package:qfx_app/features/homescreen/search/data/list_of_movies.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (UpcomingMovies.length / 2).ceil(),
      itemBuilder: (context, index) {
        int firstIndex = index * 2;
        int secondIndex = firstIndex + 1;

        return Row(
          children: [
            Expanded(
              child: MovieCards(
                isadvacnce: false,
                movieName: UpcomingMovies[firstIndex]['name'],
                Category: UpcomingMovies[firstIndex]['category'],
                images: AssetImage(UpcomingMovies[firstIndex]['image']),
                moviesTypes: UpcomingMovies[firstIndex]['movieTypes'],
                // advacnce: true,
              ),
            ),
            if (secondIndex < UpcomingMovies.length)
              Expanded(
                child: MovieCards(
                  isadvacnce: true,
                  movieName: UpcomingMovies[secondIndex]['name'],
                  Category: UpcomingMovies[secondIndex]['category'],
                  images: AssetImage(UpcomingMovies[secondIndex]['image']),
                  moviesTypes: UpcomingMovies[firstIndex]['movieTypes'],
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
