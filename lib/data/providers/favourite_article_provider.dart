import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final favouritesProvider =
    StateNotifierProvider<FavouritesNotifier, List<ArticleModel>>((ref) {
  return FavouritesNotifier();
});

class FavouritesNotifier extends StateNotifier<List<ArticleModel>> {
  FavouritesNotifier() : super([]);

  void addArticle(ArticleModel article) {
    state = [...state, article];
  }

  void removeArticle(ArticleModel article) {
    state = state.where((item) => item != article).toList();
  }

  bool isFavourite(ArticleModel article) {
    return state.contains(article);
  }
}
