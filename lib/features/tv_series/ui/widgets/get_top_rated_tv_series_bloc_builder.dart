import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/core/helpers/show_alert_dialog.dart';
import 'package:movie_app/core/routing/routes.dart';
import 'package:movie_app/features/movies/ui/widgets/category_name_and_see_all_text.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';
import 'package:movie_app/features/tv_series/ui/widgets/tv_series_list_view.dart';

class GetTopRatedTvSeriesBlocBuilder extends StatelessWidget {
  const GetTopRatedTvSeriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvSeriesCubit, TvSeriesState>(
      buildWhen:
          (previous, current) =>
              current is getTopRatedTvSeriesFailure ||
              current is getTopRatedTvSeriesLoading ||
              current is getTopRatedTvSeriesSuccess,
      builder: (context, state) {
        switch (state) {
          case getTopRatedTvSeriesLoading():
            {
              return setUpLoading();
            }
          case getTopRatedTvSeriesSuccess(:final tvSeriesResponseModel):
            {
              return setUpSuccess(tvSeriesResponseModel.tvSeriesList, context);
            }
          case getTopRatedTvSeriesFailure(:final errorMessage):
            {
              return setUpError(errorMessage, context);
            }
          default:
            {
              // if (context
              //         .read<TvSeriesCubit>()
              //         .getTopRatedTvSeriesResponseModel !=
              //     null) {
              //   return setUpSuccess(
              //     context
              //         .read<TvSeriesCubit>()
              //         .getTopRatedTvSeriesResponseModel!
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

  setUpSuccess(List<TvSeriesModel> topRatedTvSeries, BuildContext context) {
    return Column(
      children: [
        CategoryNameAndSeeAllText(
          categoryName: "Top Rated Tv Series",
          onTap: () {
            context.pushNamed(
              Routes.seeAllTvSeriesScreen,
              arguments: {
                'tvSeriesList': topRatedTvSeries,
                'categoryName': 'Top Rated',
              },
            );
          },
        ),
        SizedBox(height: 12),
        TvSeriesListView(tvSeriesList: topRatedTvSeries),
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
