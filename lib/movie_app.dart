import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/DI/get_it.dart';
import 'package:movie_app/core/helpers/connectivity/cubit/connectivity_cubit.dart';
import 'package:movie_app/core/helpers/observer.dart';
import 'package:movie_app/core/routing/app_router.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/layout/logic/nav_cubit.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/search/logic/cubit/search_cubit.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';
import 'package:movie_app/global_connectivity_listener.dart';

class MovieApp extends StatelessWidget {
  final AppRouter appRouter;
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  MovieApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ConnectivityCubit>()),
        BlocProvider(create: (_) => getIt<MovieCubit>()),
        BlocProvider(create: (_) => getIt<TvSeriesCubit>()),
        BlocProvider(create: (_) => NavCubit()),
        BlocProvider(create: (_) => getIt<SearchCubit>()),
      ],
      child: GlobalConnectivityListener(
        navigatorKey: _navigatorKey,
        child: MaterialApp(
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: false,
          navigatorObservers: [MyObserver()],
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.bottomNavBarScreen,
          builder: _buildWithConnectivityOverlay,
        ),
      ),
    );
  }


  Widget _buildWithConnectivityOverlay(BuildContext context, Widget? child) {
    final isLoading =
        context.watch<ConnectivityCubit>().state is ConnectivityLoading;

    return Stack(
      children: [
        child!,
        if (isLoading)
          const Positioned.fill(
            child: Material(
              color: Colors.black,
              child: Center(
                child: CircularProgressIndicator(color: Colors.orange),
              ),
            ),
          ),
      ],
    );
  }
}
