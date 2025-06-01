import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';

class PushMovieDetailBlocListener extends StatelessWidget {
  const PushMovieDetailBlocListener({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieCubit, MovieState>(
      listenWhen:
          (previous, current) =>
              current is getFullMovieDataSuccess ||
              current is getFullMovieDataLoading ||
              current is getFullMovieDataFailure,
      listener: (context, state) {
        if (state is getFullMovieDataLoading) {
          AppDialogs.showLoadingDialog(context);
        } else if (state is getFullMovieDataSuccess) {
          Navigator.of(context, rootNavigator: true).pop();
          context.pushNamed(
            Routes.movieDetailsScreen,
            arguments: state.fullMovieData,
          );
          context.read<MovieCubit>().resetMovieState();
        } else if (state is getFullMovieDataFailure) {
          Navigator.of(context, rootNavigator: true).pop();
        }
      },
      child: Container(),
    );
  }
}
