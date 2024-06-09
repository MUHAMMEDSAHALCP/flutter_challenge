
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:flutter_challenge/ui/widgets/article_tile_card.dart';
import 'package:gap/gap.dart';

class ArticleListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const ArticleListView({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return ArticleTileCard(article: article);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(16);
      },
    );
  }
}
