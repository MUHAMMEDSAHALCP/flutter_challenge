import 'package:flutter_challenge/data/providers/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_challenge/data/remote/api_service.dart';
import 'package:flutter_challenge/data/model/article_model.dart';

final apiServiceProvider = Provider(
  (ref) {
    final dio = ref.read(dioProvider);
    return ApiService(dio);
  },
);

final articleProvider = FutureProvider<List<ArticleModel>>(
  (ref) async {
    final apiService = ref.read(apiServiceProvider);
    return apiService.getArticles();
  },
);

final articleCardProvider = AutoDisposeStateNotifierProviderFamily<
    ArticleCardNotifier, double, ArticleModel>(
  (ref, key) {
    return ArticleCardNotifier();
  },
);

class ArticleCardNotifier extends StateNotifier<double> {
  ArticleCardNotifier() : super(1.0);

  void setScale(double scale) {
    state = scale;
  }
}
