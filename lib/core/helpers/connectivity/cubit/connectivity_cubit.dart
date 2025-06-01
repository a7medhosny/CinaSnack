import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.dart';
part 'connectivity_cubit.freezed.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final Connectivity _connectivity = Connectivity();
  late final StreamSubscription _subscription;

  ConnectivityCubit() : super(ConnectivityState.initial()) {
    init();
  }

  Future<void> init() async {
            emit(const ConnectivityState.connectivityLoading());
    _subscription = _connectivity.onConnectivityChanged.listen((result) {
      if (result.contains(ConnectivityResult.none)) {
        emit(const ConnectivityState.connectivityDisconnected());
      } else {
        emit(const ConnectivityState.connectivityConnected());
      }
    });
  }
}
