import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';
import 'package:movie_app/features/tv_series/ui/widgets/tv_series_card.dart';

class TvSeriesListView extends StatefulWidget {
  final List<TvSeriesModel> tvSeriesList;
  const TvSeriesListView({super.key, required this.tvSeriesList});

  @override
  State<TvSeriesListView> createState() => _MoviesListViewState();
}

class _MoviesListViewState extends State<TvSeriesListView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.tvSeriesList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
          behavior: HitTestBehavior.translucent,
            onTapDown: (_) {
              setState(() => selectedIndex = index);
            },
            onTapUp: (_) {
              setState(() => selectedIndex = -1);
            },
            onTapCancel: () {
              setState(() => selectedIndex = -1);
            },
            onTap: () {
              context.read<TvSeriesCubit>().getFullTvSeriesData(
                seriesId: widget.tvSeriesList[index].id,
              );
            },
            child: TvSeriesCard(
              tvSeriesList: widget.tvSeriesList,
              selectedIndex: selectedIndex,
              itemIndex: index,
            ),
          );
        },
      ),
    );
  }
}
