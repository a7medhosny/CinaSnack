import 'package:flutter/material.dart';
import 'package:movie_app/features/movies/ui/widgets/bloc_builder_widgets/get_popular_bloc_builder.dart';
import 'package:movie_app/features/tv_series/ui/widgets/get_popular_tv_series_bloc_builder.dart';
import 'package:movie_app/features/movies/ui/widgets/bloc_builder_widgets/get_top_rated_bloc_builder.dart';
import 'package:movie_app/features/tv_series/ui/widgets/get_top_rated_tv_series_bloc_builder.dart';
import 'package:movie_app/features/movies/ui/widgets/push_movie_detail_bloc_listener.dart';
import 'package:movie_app/features/tv_series/ui/widgets/push_tv_series_details_bloc_listener.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              GetTopRatedTvSeriesBlocBuilder(),
              SizedBox(height: 24),
              GetPopularTvSeriesBlocBuilder(),
              PushMovieDetailBlocListener(),
              PushTvSeriesDetailsBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
