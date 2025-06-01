import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/movies/ui/widgets/movie_card.dart';
import 'package:movie_app/features/movies/ui/widgets/push_movie_detail_bloc_listener.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({
    super.key,
    required this.moviesList,
    required this.categoryName,
  });

  final List<Movie> moviesList;
  final String categoryName;

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _buildMoviesGrid()),
            const PushMovieDetailBlocListener(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: context.pop,
        icon: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      title: Text(
        "${widget.categoryName} Movies",
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Colors.orange,
        ),
      ),
    );
  }

  Widget _buildMoviesGrid() {
    return GridView.builder(
      itemCount: widget.moviesList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.66,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            context.read<MovieCubit>().getFullMovieData(
              movieId: widget.moviesList[index].id,
            );
          },
          onTapDown: (_) => setState(() => selectedIndex = index),
          onTapUp: (_) => setState(() => selectedIndex = -1),
          onTapCancel: () => setState(() => selectedIndex = -1),
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: MovieCard(
            moviesList: widget.moviesList,
            selectedInedx: selectedIndex,
            itemIndex: index,
          ),
        );
      },
    );
  }
}
