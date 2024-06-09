import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_challenge/data/providers/connectivity_provider.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';

class ConnectivityListener extends ConsumerStatefulWidget {
  final Widget child;
  final VoidCallback? onConnectivityRestored;

  const ConnectivityListener({
    super.key,
    required this.child,
    this.onConnectivityRestored,
  });

  @override
  _ConnectivityListenerState createState() => _ConnectivityListenerState();
}

class _ConnectivityListenerState extends ConsumerState<ConnectivityListener> {
  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<bool>>(internetConnectionProvider, (previous, next) {
      _handleInternetConnectionChange(next);
    });

    return widget.child;
  }

  void _handleInternetConnectionChange(AsyncValue<bool> internetConnection) {
    final isConnected = internetConnection.value ?? true;

    if (!isConnected) {
      _showOfflineScreen();
    } else {
      _hideOfflineScreen();
      widget.onConnectivityRestored?.call();
    }
  }

  void _showOfflineScreen() {
    context.router.push(
      OfflineRoute(
        onRetry: _checkInternetConnection,
      ),
    );
  }

  void _hideOfflineScreen() {
    if (context.router.canPop()) {
      context.router.pop();
    }
  }

  Future<void> _checkInternetConnection() async {
    ref.read(retryStateProvider.notifier).setLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    final isConnected = ref.read(internetConnectionProvider).value ?? true;
    if (isConnected) {
      _hideOfflineScreen();
    }
    ref.read(retryStateProvider.notifier).setLoading(false);
  }
}
