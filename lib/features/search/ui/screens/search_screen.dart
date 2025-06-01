import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/movies/logic/cubit/movie_cubit.dart';
import 'package:movie_app/features/search/data/models/search_final_result.dart';
import 'package:movie_app/features/search/logic/cubit/search_cubit.dart';
import 'package:movie_app/features/tv_series/logic/cubit/tv_series_cubit.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController searchController = TextEditingController();
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(),
              const SizedBox(height: 6),
              _buildSearchField(context),
              const SizedBox(height: 12),
              _buildSearchResults(),
             
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      "Search",
      style: TextStyle(color: Colors.white, fontSize: 24),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return TextField(
      controller: searchController,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            context.read<SearchCubit>().search(query: searchController.text);
          },
          icon: const Icon(Icons.search, color: Colors.white),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: Colors.grey.shade600.withAlpha(70),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.orange),
        ),
        contentPadding: const EdgeInsets.all(12),
      ),
      onChanged: (query) {
        if (_debounce?.isActive ?? false) _debounce!.cancel();
        _debounce = Timer(const Duration(milliseconds: 500), () {
          context.read<SearchCubit>().search(query: query);
        });
      },
    );
  }

  Widget _buildSearchResults() {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          switch (state) {
            case searchSucess(:final searchFinalResult):
              {
                return ListView.builder(
                  itemCount: searchFinalResult.length,
                  itemBuilder: (context, index) {
                    return _buildResultItem(
                      searchFinalResult[index],
                      context,
                    );
                  },
                );
              }
            default:
              return SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _buildResultItem(
    SearchFinalResult searchResult,
    BuildContext context,
  ) {
    return InkWell(
      onTap: () {
        if (searchResult.type == "movie") {
          context.read<MovieCubit>().getFullMovieData(movieId: searchResult.id);
        } else {
          context.read<TvSeriesCubit>().getFullTvSeriesData(
            seriesId: searchResult.id,
          );
        }
      },
      child: Container(
        height: 40,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              searchResult.date.isNotEmpty
                  ? "${searchResult.title} (${searchResult.date.substring(0, 4)})"
                  : searchResult.title,
              style: const TextStyle(color: Colors.white, fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),

            Divider(thickness: 1, color: Colors.grey.shade600),
          ],
        ),
      ),
    );
  }
}
