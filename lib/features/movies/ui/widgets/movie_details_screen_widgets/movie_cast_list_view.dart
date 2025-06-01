import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/helpers/image_url.dart';
import 'package:movie_app/features/movies/data/models/creadits_response_model.dart';

class MovieCastListView extends StatelessWidget {
  const MovieCastListView({super.key, required this.creditsResponse});
  final CreditsResponseModel creditsResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "طاقم العمل",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: creditsResponse.cast.take(10).length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final cast = creditsResponse.cast[index];
              return Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: CachedNetworkImage(
                      imageUrl: getImageUrl(cast.profilePath ?? ''),
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                      errorWidget:
                          (_, __, ___) => Container(
                            width: 70,
                            height: 70,
                            color: Colors.grey[800],
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 70,
                    child: Text(
                      cast.name,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Text(
                      cast.character??'',
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 10,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
