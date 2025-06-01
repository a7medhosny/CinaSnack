import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/layout/logic/nav_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, int>(
      builder: (context, state) {
        final navCubit = context.read<NavCubit>();

        return Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Scaffold(
            backgroundColor: Colors.black,
            body: _buildBody(navCubit, state),
            bottomNavigationBar: _buildBottomNavBar(navCubit, state),
          ),
        );
      },
    );
  }

  Widget _buildBody(NavCubit navCubit, int state) {
    return SafeArea(
      child: IndexedStack(index: state, children: navCubit.screens),
    );
  }

  Widget _buildBottomNavBar(NavCubit navCubit, int state) {
    return BottomNavigationBar(
      currentIndex: state,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      showUnselectedLabels: true,
      onTap: navCubit.changeTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movies'),
        BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'TV Series'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ],
    );
  }
}
