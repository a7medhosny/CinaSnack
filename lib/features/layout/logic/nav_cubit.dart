import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/ui/screens/home_screen.dart';
import 'package:movie_app/features/movies/ui/screens/movie_screen.dart';
import 'package:movie_app/features/search/ui/screens/search_screen.dart';
import 'package:movie_app/features/tv_series/ui/screens/tv_Series_screen.dart';

class NavCubit extends Cubit<int> {
  NavCubit() : super(0);
  void changeTap(int index) => emit(index);
    final List<Widget> screens = [HomeScreen(), MovieScreen(), TvSeriesScreen(),SearchScreen()];

}
