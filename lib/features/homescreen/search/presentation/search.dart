import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import 'package:qfx_app/utils/movies/movie.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  final searchText = ValueNotifier<String>('');

  final List<Map<String, dynamic>> allMovies = [
    {
      "name": "OutLaw-dafa",
      "category": "U",
      "image": "assets/images/outlaw.png"
    },
    {"name": "Marco", "category": "A", "image": "assets/images/marco.png"},
    {
      "name": "Laaj Sharam",
      "category": "PG",
      "image": "assets/images/laaj.png"
    },
    {"name": "Chhaav", "category": "U", "image": "assets/images/chava.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 252, 248, 248),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: AppBarWithSearchSwitch(
            backgroundColor: Colors.white,
            fieldHintText: "Movie, Genres, & Languages",
            onChanged: (text) {
              searchText.value = text.toLowerCase();
            },
            animation: AppBarAnimationSlideLeft.call,
            appBarBuilder: (context) {
              return AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  title,
                  style: TextStyle(color: Colors.black),
                ),
                actions: const [
                  AppBarSearchButton(),
                ],
              );
            },
          ),
        ),
      ),
      body: ValueListenableBuilder<String>(
        valueListenable: searchText,
        builder: (context, searchQuery, child) {
          final filteredMovies = allMovies.where((movie) {
            return movie["name"].toLowerCase().contains(searchQuery) ||
                movie["category"].toLowerCase().contains(searchQuery);
          }).toList();

          return SingleChildScrollView(
            child: Column(
              children: filteredMovies.map((movie) {
                return Column(
                  children: [
                    Movies(
                      MovieName: movie["name"],
                      Category: movie["category"],
                      images: AssetImage(movie["image"]),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                      height: 30,
                      indent: 80,
                      endIndent: 80,
                    ),
                  ],
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
