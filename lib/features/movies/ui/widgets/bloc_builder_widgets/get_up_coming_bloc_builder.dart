import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/movies/ui/widgets/category_name_and_see_all_text.dart';
import 'package:movie_app/features/movies/ui/widgets/movies_list_view.dart';

class GetUpcomingBlocBuilder extends StatelessWidget {
  const GetUpcomingBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      buildWhen:
          (previous, current) =>
              current is getUpcomingMoviesFailure ||
              current is getUpcomingMoviesLoading ||
              current is getUpcomingMoviesSuccess,
      builder: (context, state) {
        switch (state) {
          case getUpcomingMoviesLoading():
            return setUpLoading();
          case getUpcomingMoviesSuccess(:final movieResponse):
            return setUpSuccess(movieResponse.moviesList, context);
          case getUpcomingMoviesFailure(:final errorMessage):
            return setUpError(errorMessage, context);
          default:
            {
              // if (context.read<MovieCubit>().getUpcomingMovieResponse != null) {
              //   return setUpSuccess(
              //     context
              //         .read<MovieCubit>()
              //         .getUpcomingMovieResponse!
              //         .moviesList,
              //     context,
              //   );
              // }
              return SizedBox.shrink();
            }
        }
      },
    );
  }

  Widget setUpSuccess(List<Movie> upcomingMovies, BuildContext context) {
    return Column(
      children: [
        CategoryNameAndSeeAllText(
          categoryName: "Up Coming Movies",
          onTap: () {
            context.pushNamed(
              Routes.seeAllScreen,
              arguments: {
                'movieList': upcomingMovies,
                'categoryName': 'Up Coming',
              },
            );
          },
        ),
        const SizedBox(height: 12),
        MoviesListView(moviesList: upcomingMovies),
      ],
    );
  }

  Widget setUpError(String errorMessage, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AppDialogs.showErrorDialog(context, message: errorMessage);
    });
    return SizedBox.shrink();
  }

  Widget setUpLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
