import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';

class PushTvSeriesDetailsBlocListener extends StatelessWidget {
  const PushTvSeriesDetailsBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TvSeriesCubit, TvSeriesState>(
      listenWhen:
          (previous, current) =>
              current is getFullTvSeriesDataLoading ||
              current is getFullTvSeriesDataSuccess,
      listener: (context, state) {
        if (state is getFullTvSeriesDataSuccess) {
          context.pop();
          context.pushNamed(
            Routes.tvSeriesDetailsScreen,
            arguments: state.fullTvSeriesData,
          );
        } else if (state is getFullTvSeriesDataLoading) {
          AppDialogs.showLoadingDialog(context);
        }
      },
      child: Container(),
    );
  }
}
