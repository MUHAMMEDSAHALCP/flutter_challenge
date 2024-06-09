import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/controllers/connectivity_controller.dart';
import 'package:flutter_challenge/data/providers/article_provider.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/ui/widgets/article_list_skeleton.dart';
import 'package:flutter_challenge/ui/widgets/custom_artcle_search_button.dart';
import 'package:flutter_challenge/ui/widgets/custom_article_list_view.dart';
import 'package:flutter_challenge/ui/widgets/custom_favourite_buttom.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ArticleListScreen extends HookConsumerWidget {
  const ArticleListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleAsyncValue = ref.watch(articleProvider);

    return ConnectivityListener(
      onConnectivityRestored: () => ref.refresh(articleProvider),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppTextConstants.articles,
            style: Theme.of(context).textTheme.labelLarge!.bold.s30.black,
          ),
          centerTitle: false,
          actions: const [
            FavouriteButton(),
            ArticleSearchButton(),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () => ref.refresh(articleProvider.future),
          child: articleAsyncValue.when(
            data: (articles) => ArticleListView(articles: articles),
            loading: () => const ArticleListSkeleton(),
            error: (error, stack) => Center(
              child: Text(
                AppTextConstants.noArticlesFound,
                style: Theme.of(context).textTheme.labelLarge!.w500.s16.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
