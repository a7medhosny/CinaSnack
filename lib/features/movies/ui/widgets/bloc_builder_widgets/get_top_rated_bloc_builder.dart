import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/movies/ui/widgets/category_name_and_see_all_text.dart';
import 'package:movie_app/features/movies/ui/widgets/movies_list_view.dart';

class GetTopRatedBlocBuilder extends StatelessWidget {
  const GetTopRatedBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      buildWhen:
          (previous, current) =>
              current is getTopRatedMoviesFailure ||
              current is getTopRatedMoviesSuccess ||
              current is getTopRatedMoviesLoading,
      builder: (context, state) {
        print('GetTopRatedBlocBuilder state: $state');
        switch (state) {
          case getTopRatedMoviesLoading():
            {
              return setUpLoading();
            }
          case getTopRatedMoviesSuccess(:final movieResponse):
            {
              return setUpSuccess(movieResponse.moviesList, context);
            }
          case getTopRatedMoviesFailure(:final errorMessage):
            {
              return setUpError(errorMessage, context);
            }
          default:
            {
              // if (context.read<MovieCubit>().getTopRatedMovieResponse != null) {
              //   return setUpSuccess(
              //     context
              //         .read<MovieCubit>()
              //         .getTopRatedMovieResponse!
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

  setUpSuccess(List<Movie> topRatedMovies, BuildContext context) {
    return Column(
      children: [
        CategoryNameAndSeeAllText(
          categoryName: "Top Rated Movies",
          onTap: () {
            context.pushNamed(
              Routes.seeAllScreen,
              arguments: {
                'movieList': topRatedMovies,
                'categoryName': 'Top Rated',
              },
            );
          },
        ),
        SizedBox(height: 12),
        MoviesListView(moviesList: topRatedMovies),
      ],
    );
  }

  setUpError(String errorMessage, context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AppDialogs.showErrorDialog(context, message: errorMessage);
    });
    return SizedBox.shrink();
  }

  setUpLoading() {
    return Center(child: CircularProgressIndicator());
  }
}
