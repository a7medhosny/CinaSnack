import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/connectivity/cubit/connectivity_cubit.dart';
import 'package:movie_app/core/helpers/no_internet_overlay.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';

class GlobalConnectivityListener extends StatelessWidget {
  final Widget child;
  final GlobalKey<NavigatorState> navigatorKey;

  const GlobalConnectivityListener({
    super.key,
    required this.child,
    required this.navigatorKey,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectivityState>(
      listener: (context, state) {
        if (state is ConnectivityDisconnected) {
          NoInternetOverlay.show(navigatorKey.currentContext!);
        } else if (state is ConnectivityConnected) {
          NoInternetOverlay.hide();
          context.read<MovieCubit>()
            ..getTopRatedMovies()
            ..getPopularMovies()
            ..getUpcomingMovies()
            ..getNowPlayingMovies();

          context.read<TvSeriesCubit>()
            ..getTopRatedTvSeries()
            ..getPopularTvSeries()
            ..getAiringTodayTvSeries()
            ..getOnTheAirTvSeries();
        }
      },
      child: child,
    );
  }
}
