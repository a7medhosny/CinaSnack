import 'package:flutter/material.dart';

class MyObserver extends NavigatorObserver {
  final List<Route> _stack = [];

  @override
  void didPush(Route route, Route? previousRoute) {
    _stack.add(route);
    _logStack();
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _stack.remove(route);
    _logStack();
  }

  void _logStack() {
    print('🧱 Current Stack:');
    for (var route in _stack) {
      print(' -> ${route.settings.name}');
    }
  }
}
