import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helpers/image_url.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';

class TvSeriesCard extends StatelessWidget {
  final List<TvSeriesModel> tvSeriesList;
  final int selectedIndex, itemIndex;

  const TvSeriesCard({
    super.key,
    required this.tvSeriesList,
    required this.selectedIndex,
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
              imageUrl: getImageUrl(tvSeriesList[itemIndex].posterPath ?? ''),
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
            if (selectedIndex == itemIndex)
              Container(color: Colors.black.withValues(alpha: 0.5)),
          ],
        ),
      ),
    );
  }
}
