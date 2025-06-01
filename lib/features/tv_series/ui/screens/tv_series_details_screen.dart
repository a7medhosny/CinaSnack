import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/image_url.dart';
import 'package:movie_app/core/helpers/open_youtube_video.dart';
import 'package:movie_app/features/movies/data/models/creadits_response_model.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/movies/data/models/videos_response.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_details_model.dart';
import 'package:movie_app/features/movies/ui/widgets/movie_details_screen_widgets/movie_cast_list_view.dart';
import 'package:movie_app/features/tv_series/ui/widgets/push_tv_series_details_bloc_listener.dart';
import 'package:movie_app/features/tv_series/ui/widgets/tv_series_list_view.dart';

class TvSeriesDetailsScreen extends StatelessWidget {
  final TvSeriesDetailsModel tvSeriesDetails;
  final CreditsResponseModel creditsResponse;
  final List<VideoModel> tvTrailers;
  final TvSeriesResponseModel recommendationsTvSeries;

  const TvSeriesDetailsScreen({
    super.key,
    required this.tvSeriesDetails,
    required this.creditsResponse,
    required this.tvTrailers,
    required this.recommendationsTvSeries,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildGenresText(),
                  const SizedBox(height: 12),
                  _buildVoteAndRuntimeRow(),
                  const SizedBox(height: 16),
                  if (_hasTagline()) _buildTagline(),
                  _buildOverview(context),
                  const SizedBox(height: 20),
                  _buildSeasonsAndEpisodes(),
                  const SizedBox(height: 20),
                  MovieCastListView(creditsResponse: creditsResponse),
                  const SizedBox(height: 20),
                  _buildTrailerButton(),
                  const SizedBox(height: 40),
                  _buildRecommendationsTitle(context),
                  const SizedBox(height: 6),
                  TvSeriesListView(tvSeriesList: recommendationsTvSeries.tvSeriesList),
                  PushTvSeriesDetailsBlocListener(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ],
      expandedHeight: 400,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: getImageUrl(tvSeriesDetails.backdropPath ?? ''),
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ],
        ),
        titlePadding: EdgeInsets.zero,
        title: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              tvSeriesDetails.originalName??'',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.orange,
                  ),
            ),
          ),
        ),
      ),
    );
  }

  bool _hasTagline() => tvSeriesDetails.tagline?.isNotEmpty ?? false;

  Widget _buildGenresText() {
    return Text(
      tvSeriesDetails.genres.map((g) => g.name).join(', '),
      style: const TextStyle(color: Colors.white70, fontSize: 14),
    );
  }

  Widget _buildVoteAndRuntimeRow() {
    final runtime = (tvSeriesDetails.episodeRunTime?.isNotEmpty ?? false)
        ? tvSeriesDetails.episodeRunTime!.first
        : 40;
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.orange, size: 20),
        const SizedBox(width: 4),
        Text(
          tvSeriesDetails.voteAverage.toStringAsFixed(1),
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(width: 16),
        const Icon(Icons.access_time, color: Colors.orange, size: 20),
        const SizedBox(width: 4),
        Text(
          '$runtime min/ep',
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildTagline() {
    return Column(
      children: [
        Text(
          '"${tvSeriesDetails.tagline}"',
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

  Widget _buildOverview(BuildContext context) {
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
          tvSeriesDetails.overview ?? '',
          style: const TextStyle(height: 1.5, color: Colors.white70),
        ),
      ],
    );
  }

  Widget _buildSeasonsAndEpisodes() {
    return Text(
      '${tvSeriesDetails.numberOfSeasons} Season - ${tvSeriesDetails.numberOfEpisodes} Episode',
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildTrailerButton() {
    if (tvTrailers.isEmpty || (tvTrailers[0].key?.isEmpty ?? true)) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () => openYouTubeVideo(tvTrailers[0].key!),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Trailer',
          style: TextStyle(color: Colors.white),
        ),
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
