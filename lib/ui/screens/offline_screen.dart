import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/providers/connectivity_provider.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:gap/gap.dart';

@RoutePage()
class OfflineScreen extends ConsumerWidget {
  final VoidCallback onRetry;
  const OfflineScreen({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(retryStateProvider);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.cloud_off,
              color: AppColor.redAccent,
              size: 100,
            ),
            const Gap(20),
            Text(
              AppTextConstants.noInternetConnection,
              style: Theme.of(context).textTheme.labelLarge!.w700.s24.black,
            ),
            const Gap(8),
            Text(
              AppTextConstants.checkYourConnectionAndTryAgain,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .w400
                  .s16
                  .dateTextColor,
            ),
            const Gap(32),
            isLoading
                ? const CupertinoActivityIndicator()
                : ElevatedButton(
                    onPressed: () => onRetry(),
                    child: Text(
                      AppTextConstants.retry,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .w400
                          .s16
                          .black,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
