import 'package:flutter/material.dart';
import 'package:movie_app/features/tv_series/ui/widgets/get_airing_today_tv_series.dart';
import 'package:movie_app/features/tv_series/ui/widgets/get_on_the_air_tv_series_bloc_builder.dart';
import 'package:movie_app/features/tv_series/ui/widgets/get_popular_tv_series_bloc_builder.dart';
import 'package:movie_app/features/tv_series/ui/widgets/get_top_rated_tv_series_bloc_builder.dart';

class TvSeriesScreen extends StatelessWidget {
  const TvSeriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GetTopRatedTvSeriesBlocBuilder(),
              SizedBox(height: 24),
              GetPopularTvSeriesBlocBuilder(),
              SizedBox(height: 24),
              GetOnTheAirTvSeriesBlocBuilder(),
              SizedBox(height: 24),
              GetAiringTodayTvSeries(),
              // PushTvSeriesDetailsBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
