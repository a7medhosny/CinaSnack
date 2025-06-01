import 'package:flutter/material.dart';
import 'package:movie_app/features/movies/data/models/movie_detail_model.dart';

class VoteAndMovieTimeRow extends StatelessWidget {
  const VoteAndMovieTimeRow({super.key,required this.movieDetails});
  final MovieDetailsModel movieDetails;

  @override
  Widget build(BuildContext context) {
    return  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        '${movieDetails.voteAverage.toStringAsFixed(1)} / 10',
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 16),
                      Icon(Icons.access_time, size: 18, color: Colors.white70),
                      const SizedBox(width: 4),
                      Text(
                        movieDetails.runtime != null ?
                        '${movieDetails.runtime! ~/ 60}h ${movieDetails.runtime! % 60}m':'',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  );
  }
}