import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/controllers/connectivity_controller.dart';
import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:flutter_challenge/data/providers/article_provider.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/ui/widgets/article_search_delegate.dart';
import 'package:flutter_challenge/ui/widgets/article_tile_card.dart';
import 'package:flutter_challenge/ui/widgets/article_list_skeleton.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ArticleListScreen extends HookConsumerWidget {
  const ArticleListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<ArticleModel>> articleAsyncValue =
        ref.watch(articleProvider);

    List<ArticleModel> filteredArticles = [];

    return ConnectivityListener(
      onConnectivityRestored: () => ref.refresh(articleProvider),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppTextConstants.articles,
            style: Theme.of(context).textTheme.labelLarge!.bold.s30.black,
          ),
          centerTitle: false,
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 16),
              icon: Assets.png.searchIcon.image(height: 32, width: 32),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: ArticleSearchDelegate(
                    articles: filteredArticles,
                  ),
                );
              },
            ),
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () => ref.refresh(articleProvider.future),
          child: articleAsyncValue.when(
            data: (articles) {
              if (filteredArticles.isEmpty) {
                filteredArticles.addAll(articles);
              }
              return ListView.separated(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                itemCount: filteredArticles.length,
                itemBuilder: (context, index) {
                  final article = filteredArticles[index];
                  return ArticleTileCard(article: article);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(16);
                },
              );
            },
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
