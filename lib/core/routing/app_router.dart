import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/DI/get_it.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/ui/screens/see_all_screen.dart';
import 'package:movie_app/features/layout/logic/nav_cubit.dart';
import 'package:movie_app/features/layout/ui/screens/bottom_nav_bar.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/movies/ui/screens/movie_details_screen.dart';
import 'package:movie_app/features/search/logic/cubit/search_cubit.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';
import 'package:movie_app/features/tv_series/ui/screens/see_all_tv_series_screen.dart';
import 'package:movie_app/features/tv_series/ui/screens/tv_series_details_screen.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.bottomNavBarScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BottomNavBar(),
        );

      case Routes.movieDetailsScreen:
        {
          final args = settings.arguments;
          if (args is Map<String, dynamic>) {
            return PageTransition(
              settings: settings,
              child: BlocProvider(
                create: (_) => getIt<MovieCubit>(),
                child: MovieDetailsScreen(
                  movieDetails: args['movieDetails'],
                  creditsResponse: args['credits'],
                  recommendationsMovies: args['recommendationsMovies'],
                  movieTrailer: args['movieTrailer'],
                ),
              ),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
            );
          }
          return null; // هنا بدل _errorRoute ترجع null
        }

      case Routes.seeAllScreen:
        {
          final args = settings.arguments;
          if (args is Map<String, dynamic>) {
            return PageTransition(
              settings: settings,
              child: BlocProvider(
                create: (_) => getIt<MovieCubit>(),
                child: SeeAllScreen(
                  moviesList: args['movieList'],
                  categoryName: args['categoryName'],
                ),
              ),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
            );
          }
          return null;
        }

      case Routes.seeAllTvSeriesScreen:
        {
          final args = settings.arguments;
          if (args is Map<String, dynamic>) {
            return PageTransition(
              settings: settings,
              child: BlocProvider(
                create: (_) => getIt<TvSeriesCubit>(),
                child: SeeAllTvSeriesScreen(
                  categoryName: args['categoryName'],
                  tvSeriesList: args['tvSeriesList'],
                ),
              ),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
            );
          }
          return null;
        }

      case Routes.tvSeriesDetailsScreen:
        {
          final args = settings.arguments;
          if (args is Map<String, dynamic>) {
            return PageTransition(
              settings: settings,
              child: BlocProvider(
                create: (_) => getIt<TvSeriesCubit>(),
                child: TvSeriesDetailsScreen(
                  tvSeriesDetails: args['tvSeriesDetails'],
                  creditsResponse: args['creditsResponse'],
                  tvTrailers: args['tvTrailer'],
                  recommendationsTvSeries: args['recommendationsTvSeries'],
                ),
              ),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
            );
          }
          return null;
        }

      default:
        return null;
    }
  }
}

// class AppRouter {
//   Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.bottomNavBarScreen:
//         return MaterialPageRoute(
//           settings: settings,
//           builder: (_) => MultiBlocProvider(
//             providers: [
//               BlocProvider(create: (_) => NavCubit()),
//               BlocProvider(create: (_) => getIt<SearchCubit>()),
//               BlocProvider(
//                 create: (_) => getIt<MovieCubit>()
//                   ..getTopRatedMovies()
//                   ..getPopularMovies()
//                   ..getUpcomingMovies()
//                   ..getNowPlayingMovies(),
//               ),
//               BlocProvider(
//                 create: (_) => getIt<TvSeriesCubit>()
//                   ..getTopRatedTvSeries()
//                   ..getPopularTvSeries()
//                   ..getAiringTodayTvSeries()
//                   ..getOnTheAirTvSeries(),
//               ),
//             ],
//             child: BottomNavBar(),
//           ),
//         );
//       case Routes.movieDetailsScreen:
//         {
//           final args = settings.arguments;
//           if (args is Map<String, dynamic>) {
//             return PageTransition(
//               settings: settings,
//               child: BlocProvider(
//                 create: (_) => getIt<MovieCubit>(),
//                 child: MovieDetailsScreen(
//                   movieDetails: args['movieDetails'],
//                   creditsResponse: args['credits'],
//                   recommendationsMovies: args['recommendationsMovies'],
//                   movieTrailer: args['movieTrailer'],
//                 ),
//               ),
//               type: PageTransitionType.fade,
//               duration: const Duration(milliseconds: 400),
//             );
//           }
//           return _errorRoute("Invalid arguments for MovieDetailsScreen", settings);
//         }

//       case Routes.seeAllScreen:
//         {
//           final args = settings.arguments;
//           if (args is Map<String, dynamic>) {
//             return PageTransition(
//               settings: settings,
//               child: BlocProvider(
//                 create: (_) => getIt<MovieCubit>(),
//                 child: SeeAllScreen(
//                   moviesList: args['movieList'],
//                   categoryName: args['categoryName'],
//                 ),
//               ),
//               type: PageTransitionType.fade,
//               duration: const Duration(milliseconds: 400),
//             );
//           }
//           return _errorRoute("Invalid arguments for SeeAllScreen", settings);
//         }

//       case Routes.seeAllTvSeriesScreen:
//         {
//           final args = settings.arguments;
//           if (args is Map<String, dynamic>) {
//             return PageTransition(
//               settings: settings,
//               child: BlocProvider(
//                 create: (_) => getIt<TvSeriesCubit>(),
//                 child: SeeAllTvSeriesScreen(
//                   categoryName: args['categoryName'],
//                   tvSeriesList: args['tvSeriesList'],
//                 ),
//               ),
//               type: PageTransitionType.fade,
//               duration: const Duration(milliseconds: 400),
//             );
//           }
//           return _errorRoute("Invalid arguments for SeeAllTvSeriesScreen", settings);
//         }

//       case Routes.tvSeriesDetailsScreen:
//         {
//           final args = settings.arguments;
//           if (args is Map<String, dynamic>) {
//             return PageTransition(
//               settings: settings,
//               child: BlocProvider(
//                 create: (_) => getIt<TvSeriesCubit>(),
//                 child: TvSeriesDetailsScreen(
//                   tvSeriesDetails: args['tvSeriesDetails'],
//                   creditsResponse: args['creditsResponse'],
//                   tvTrailers: args['tvTrailer'],
//                   recommendationsTvSeries: args['recommendationsTvSeries'],
//                 ),
//               ),
//               type: PageTransitionType.fade,
//               duration: const Duration(milliseconds: 400),
//             );
//           }
//           return _errorRoute("Invalid arguments for TvSeriesDetailsScreen", settings);
//         }

//       default:
//         return _errorRoute("No route defined for ${settings.name}", settings);
//     }
//   }

  // Route<dynamic> _errorRoute(String message, [RouteSettings? settings]) {
  //   return MaterialPageRoute(
  //     settings: settings,
  //     builder: (_) => Scaffold(
  //       appBar: AppBar(title: const Text('خطأ')),
  //       body: Center(
  //         child: Text(
  //           message,
  //           style: const TextStyle(fontSize: 18, color: Colors.red),
  //           textAlign: TextAlign.center,
  //         ),
  //       ),
  //     ),
  //   );
  // }
// }