import 'package:flutter/material.dart';
import 'package:movie_app/features/movies/ui/widgets/bloc_builder_widgets/get_now_playing_bloc_builder.dart';
import 'package:movie_app/features/movies/ui/widgets/bloc_builder_widgets/get_popular_bloc_builder.dart';
import 'package:movie_app/features/movies/ui/widgets/bloc_builder_widgets/get_top_rated_bloc_builder.dart';
import 'package:movie_app/features/movies/ui/widgets/bloc_builder_widgets/get_up_coming_bloc_builder.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GetTopRatedBlocBuilder(),
              SizedBox(height: 24),
              GetPopularBlocBuilder(),
              SizedBox(height: 24),
              GetNowPlayingBlocBuilder(),
              SizedBox(height: 24),
              GetUpcomingBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
