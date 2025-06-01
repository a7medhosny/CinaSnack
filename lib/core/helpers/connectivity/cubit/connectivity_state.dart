part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = _Initial;

  const factory ConnectivityState.connectivityLoading() = ConnectivityLoading ;
  const factory ConnectivityState.connectivityConnected() = ConnectivityConnected ;

  const factory ConnectivityState.connectivityDisconnected() = ConnectivityDisconnected ;
}
