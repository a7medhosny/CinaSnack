import 'package:flutter/material.dart';
import 'package:movie_app/core/helpers/open_youtube_video.dart';
import 'package:movie_app/features/movies/data/models/creadits_response_model.dart';
import 'package:movie_app/features/movies/data/models/movie_detail_model.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/data/models/videos_response.dart';
import 'package:movie_app/features/movies/ui/widgets/movie_details_screen_widgets/movie_cast_list_view.dart';
import 'package:movie_app/features/movies/ui/widgets/movie_details_screen_widgets/movie_details_app_bar.dart';
import 'package:movie_app/features/movies/ui/widgets/movie_details_screen_widgets/vote_and_movie_time_row.dart';
import 'package:movie_app/features/movies/ui/widgets/movies_list_view.dart';
import 'package:movie_app/features/movies/ui/widgets/push_movie_detail_bloc_listener.dart';

class MovieDetailsScreen extends StatelessWidget {
  final MovieDetailsModel movieDetails;
  final CreditsResponseModel creditsResponse;
  final MovieResponseModel recommendationsMovies;
  final VideoModel? movieTrailer;

  const MovieDetailsScreen({
    super.key,
    required this.movieDetails,
    required this.creditsResponse,
    required this.recommendationsMovies,
    required this.movieTrailer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          MovieDetailsAppBar(movieDetails: movieDetails),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGenresText(),
                  const SizedBox(height: 12),
                  VoteAndMovieTimeRow(movieDetails: movieDetails),
                  const SizedBox(height: 16),
                  if (_hasTagline()) _buildMovieTagLine(),
                  _buildOverviewSection(context),
                  const SizedBox(height: 20),
                  MovieCastListView(creditsResponse: creditsResponse),
                  const SizedBox(height: 12),
                  _buildTrailerButton(),
                  const SizedBox(height: 60),
                  _buildRecommendationsTitle(context),
                  const SizedBox(height: 6),
                  MoviesListView(moviesList: recommendationsMovies.moviesList),
                  PushMovieDetailBlocListener(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _hasTagline() => movieDetails.tagline?.isNotEmpty ?? false;

  Widget _buildGenresText() {
    return Text(
      movieDetails.genres.map((g) => g.name).join(', '),
      style: const TextStyle(color: Colors.white70, fontSize: 14),
    );
  }

  Widget _buildMovieTagLine() {
    return Column(
      children: [
        Text(
          '"${movieDetails.tagline}"',
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16,
            color: Colors.orangeAccent,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildOverviewSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "نظرة عامة",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          movieDetails.overview ?? '',
          style: const TextStyle(height: 1.5, color: Colors.white70),
        ),
      ],
    );
  }

  Widget _buildTrailerButton() {
    if (movieTrailer == null || (movieTrailer?.key ?? '').isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () => openYouTubeVideo(movieTrailer!.key!),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text('Trailer', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildRecommendationsTitle(BuildContext context) {
    return Text(
      'Recommendations',
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: Colors.orange,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
