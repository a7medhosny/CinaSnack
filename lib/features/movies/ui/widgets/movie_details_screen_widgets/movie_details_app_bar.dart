import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/image_url.dart';
import 'package:movie_app/features/movies/data/models/movie_detail_model.dart';

class MovieDetailsAppBar extends StatelessWidget {
  const MovieDetailsAppBar({super.key, required this.movieDetails});
  final MovieDetailsModel movieDetails;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      actions:[ IconButton(
        onPressed: () {
          // context.pop();
                 context.pop();

        },
        icon: Icon(Icons.arrow_back, color: Colors.white),
      ),
      ],
      expandedHeight: 400,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            // background image
            CachedNetworkImage(
              imageUrl: getImageUrl(movieDetails.backdropPath??''),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // Gradient Container
            Container(
              width: double.infinity,
              height: double.infinity,
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

        // App Bar Title
        title: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child:
            // Movie Title And Release Date By Years
            Text(
              movieDetails.releaseDate != null && movieDetails.releaseDate!.isNotEmpty?
              '${movieDetails.title} (${movieDetails.releaseDate?.substring(0, 4)})':'${movieDetails.title}',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.orange,
              ),
            ),
          ),
        ),
        titlePadding: EdgeInsets.zero,
      ),
    );
  }
}
