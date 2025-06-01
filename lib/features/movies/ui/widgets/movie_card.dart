import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helpers/image_url.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';

class MovieCard extends StatelessWidget {
  final List<Movie> moviesList;
  final int selectedInedx, itemIndex;

  const MovieCard({
    super.key,
    required this.moviesList,
    required this.selectedInedx,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: Colors.deepOrangeAccent),
      ),

      child: SizedBox(
        width: 128,
        height: 180,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: getImageUrl(moviesList[itemIndex].posterPath ?? ''),
              placeholder:
                  (context, url) => const Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
              errorWidget:
                  (context, url, error) => const Icon(Icons.broken_image),
              fit: BoxFit.cover,
            ),
            if (selectedInedx == itemIndex)
              Container(color: Colors.black.withValues(alpha: 0.5)),
          ],
        ),
      ),
    );
  }
}
