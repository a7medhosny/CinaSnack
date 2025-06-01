import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/movies/ui/widgets/movie_card.dart';

class MoviesListView extends StatefulWidget {
  final List<Movie> moviesList;
  const MoviesListView({super.key, required this.moviesList});

  @override
  State<MoviesListView> createState() => _MoviesListViewState();
}

class _MoviesListViewState extends State<MoviesListView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.moviesList.length,
        itemBuilder: (context, index) {
          return InkWell(
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTapDown: (_) {
              setState(() => selectedIndex = index);
            },
            onTapUp: (_) {
              setState(() => selectedIndex = -1);
            },
            onTapCancel: () {
              setState(() => selectedIndex = -1);
            },
            onTap: () {
              context.read<MovieCubit>().getFullMovieData(
                movieId: widget.moviesList[index].id,
              );
            },
            child: MovieCard(
              moviesList: widget.moviesList,
              selectedInedx: selectedIndex,
              itemIndex: index,
            ),
          );
        },
      ),
    );
  }
}
