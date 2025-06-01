import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/ui/widgets/category_name_and_see_all_text.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';
import 'package:movie_app/features/tv_series/ui/widgets/tv_series_list_view.dart';

class GetOnTheAirTvSeriesBlocBuilder extends StatelessWidget {
  const GetOnTheAirTvSeriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesCubit, TvSeriesState>(
      buildWhen:
          (previous, current) =>
              current is getOnTheAirTvSeriesFailure ||
              current is getOnTheAirTvSeriesLoading ||
              current is getOnTheAirTvSeriesSuccess,
      builder: (context, state) {
        switch (state) {
          case getOnTheAirTvSeriesLoading():
            {
              return setUpLoading();
            }
          case getOnTheAirTvSeriesSuccess(:final tvSeriesResponseModel):
            {
              return setUpSuccess(tvSeriesResponseModel.tvSeriesList, context);
            }
          case getOnTheAirTvSeriesFailure(:final errorMessage):
            {
              return setUpError(errorMessage, context);
            }
          default:
            {
              // if (context
              //         .read<TvSeriesCubit>()
              //         .getOnTheAirTvSeriesResponseModel !=
              //     null) {
              //   return setUpSuccess(
              //     context
              //         .read<TvSeriesCubit>()
              //         .getOnTheAirTvSeriesResponseModel!
              //         .tvSeriesList,
              //     context,
              //   );
              // }
              return SizedBox.shrink();
            }
        }
      },
    );
  }

  setUpSuccess(List<TvSeriesModel> onTheAirTvSeries, BuildContext context) {
    return Column(
      children: [
        CategoryNameAndSeeAllText(
          categoryName: "OnTheAir TvSeries",
          onTap: () {
            context.pushNamed(
              Routes.seeAllTvSeriesScreen,
              arguments: {
                'tvSeriesList': onTheAirTvSeries,
                'categoryName': 'OnTheAir',
              },
            );
          },
        ),
        SizedBox(height: 12),
        TvSeriesListView(tvSeriesList: onTheAirTvSeries),
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
