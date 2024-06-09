import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/providers/favourite_article_provider.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/ui/widgets/custom_article_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class FavouriteArticleView extends HookConsumerWidget {
  const FavouriteArticleView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouriteArticles = ref.watch(favouritesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTextConstants.myFavourites,
          style: Theme.of(context).textTheme.labelLarge!.w700.s24.black,
        ),
      ),
      body: favouriteArticles.isEmpty
          ? Center(
              child: Text(
                AppTextConstants.noArticlesFound,
                style: Theme.of(context).textTheme.labelLarge!.w500.s16.black,
              ),
            )
          : ArticleListView(articles: favouriteArticles),
    );
  }
}
