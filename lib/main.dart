import 'package:flutter/material.dart';
import 'package:movie_app/core/DI/get_it.dart';
import 'package:movie_app/core/routing/app_router.dart';
import 'package:movie_app/movie_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(MovieApp(appRouter: AppRouter()));
}
