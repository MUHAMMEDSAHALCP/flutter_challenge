import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/providers/article_provider.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/ui/widgets/article_search_delegate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ArticleSearchButton extends HookConsumerWidget {
  const ArticleSearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filteredArticles = ref.watch(articleProvider).asData?.value ?? [];

    return IconButton(
      padding: const EdgeInsets.only(right: 16),
      icon: Assets.png.searchIcon.image(height: 32, width: 32),
      onPressed: () {
        showSearch(
          context: context,
          delegate: ArticleSearchDelegate(articles: filteredArticles),
        );
      },
    );
  }
}