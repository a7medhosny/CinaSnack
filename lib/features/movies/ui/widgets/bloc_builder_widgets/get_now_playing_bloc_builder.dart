import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/data/models/movie_response_model.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/movies/ui/widgets/category_name_and_see_all_text.dart';
import 'package:movie_app/features/movies/ui/widgets/movies_list_view.dart';

class GetNowPlayingBlocBuilder extends StatelessWidget {
  const GetNowPlayingBlocBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      buildWhen:
          (previous, current) =>
              current is getNowPlayingMoviesFailure ||
              current is getNowPlayingMoviesLoading ||
              current is getNowPlayingMoviesSuccess,
      builder: (context, state) {
        switch (state) {
          case getNowPlayingMoviesLoading():
            return setUpLoading();
          case getNowPlayingMoviesSuccess(:final movieResponse):
            return setUpSuccess(movieResponse.moviesList, context);
          case getNowPlayingMoviesFailure(:final errorMessage):
            return setUpError(errorMessage, context);
          default:
            {
              // if (context.read<MovieCubit>().getNowPlayingMovieResponse != null) {
              //   return setUpSuccess(
              //     context
              //         .read<MovieCubit>()
              //         .getNowPlayingMovieResponse!
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

  Widget setUpSuccess(List<Movie> nowPlayingMovies, BuildContext context) {
    return Column(
      children: [
        CategoryNameAndSeeAllText(
          categoryName: "Now Playing Movies",
          onTap: () {
            context.pushNamed(
              Routes.seeAllScreen,
              arguments: {
                'movieList': nowPlayingMovies,
                'categoryName': 'Now Playing',
              },
            );
          },
        ),
        const SizedBox(height: 12),
        MoviesListView(moviesList: nowPlayingMovies),
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
