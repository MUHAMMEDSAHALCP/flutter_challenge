import 'package:auto_route/auto_route.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: ArticleListRoute.page),
        AutoRoute(page: ArticleDetailRoute.page),
        AutoRoute(page: FullRouteImage.page),
        AutoRoute(page: OfflineRoute.page),
        AutoRoute(page: FavouriteArticleView.page),
      ];
}
