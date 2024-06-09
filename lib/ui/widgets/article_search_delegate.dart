import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';
import 'package:flutter_challenge/ui/widgets/article_image.dart';

class ArticleSearchDelegate extends SearchDelegate<ArticleModel> {
  final List<ArticleModel> articles;
  final FocusNode _searchFocusNode = FocusNode();

  ArticleSearchDelegate({
    required this.articles,
  }) {
    _searchFocusNode.requestFocus();
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        context.popRoute();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults(context, articles);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults(context, articles);
  }

  Widget _buildSearchResults(
      BuildContext context, List<ArticleModel> articles) {
    final filteredArticles = articles
        .where((article) =>
            article.title!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (filteredArticles.isEmpty) {
      return Center(
        child: Text(
          AppTextConstants.noSearchResults,
          style: Theme.of(context).textTheme.labelLarge!.w500.s16.black,
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      itemCount: filteredArticles.length,
      itemBuilder: (context, index) {
        final article = filteredArticles[index];
        return _buildArticleListItem(context, article);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: AppColor.grey.withOpacity(0.5),
        );
      },
    );
  }

  Widget _buildArticleListItem(BuildContext context, ArticleModel article) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      leading: ArticleImage(
        height: 80,
        width: 80,
        imageUrl: article.images?.image,
        isFromDetailView: true,
        articleModel: article,
      ),
      title: Text(
        article.title ?? '',
        style: Theme.of(context).textTheme.labelLarge!.w700.s15.black,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {
        context.router.push(ArticleDetailRoute(article: article));
      },
    );
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }
}
