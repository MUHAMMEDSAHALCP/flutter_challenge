import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

StreamProvider<bool> internetConnectionProvider = StreamProvider<bool>(
  (ref) async* {
    yield* InternetConnectionChecker().onStatusChange.map((status) {
      return status == InternetConnectionStatus.connected;
    },);
  },
);

StateNotifierProvider<RetryStateNotifier, bool> retryStateProvider =
    StateNotifierProvider<RetryStateNotifier, bool>(
  (ref) => RetryStateNotifier(),
);

class RetryStateNotifier extends StateNotifier<bool> {
  RetryStateNotifier() : super(false);
  void setLoading(bool isLoading) {
    state = isLoading;
  }
}
