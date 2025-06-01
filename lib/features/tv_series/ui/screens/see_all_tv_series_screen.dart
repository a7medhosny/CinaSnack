import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/helpers/extiosions.dart';
import 'package:movie_app/features/tv_series/data/models/tv_series_response_model.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';
import 'package:movie_app/features/tv_series/ui/widgets/push_tv_series_details_bloc_listener.dart';
import 'package:movie_app/features/tv_series/ui/widgets/tv_series_card.dart';

class SeeAllTvSeriesScreen extends StatefulWidget {
  final String categoryName;
  final List<TvSeriesModel> tvSeriesList;

  const SeeAllTvSeriesScreen({
    super.key,
    required this.categoryName,
    required this.tvSeriesList,
  });

  @override
  State<SeeAllTvSeriesScreen> createState() => _SeeAllTvSeriesScreenState();
}

class _SeeAllTvSeriesScreenState extends State<SeeAllTvSeriesScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _buildTvSeriesGrid()),
            const PushTvSeriesDetailsBlocListener(),
          ],
        ),
      ),
    );
  }

  // AppBar Component
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: context.pop,
        icon: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      title: Text(
        '${widget.categoryName} TV Series',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Colors.orange,
        ),
      ),
    );
  }

  // GridView Component
  Widget _buildTvSeriesGrid() {
    return GridView.builder(
      itemCount: widget.tvSeriesList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.66,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTapDown: (_) => setState(() => selectedIndex = index),
          onTapUp: (_) => setState(() => selectedIndex = -1),
          onTapCancel: () => setState(() => selectedIndex = -1),
          onTap: () {
            context.read<TvSeriesCubit>().getFullTvSeriesData(
              seriesId: widget.tvSeriesList[index].id,
            );
          },
          behavior: HitTestBehavior.translucent,
          child: TvSeriesCard(
            tvSeriesList: widget.tvSeriesList,
            selectedIndex: selectedIndex,
            itemIndex: index,
          ),
        );
      },
    );
  }
}
