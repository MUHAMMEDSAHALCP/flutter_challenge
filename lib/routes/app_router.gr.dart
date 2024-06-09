// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_challenge/data/model/article_model.dart' as _i9;
import 'package:flutter_challenge/ui/screens/article_detail_%20screen.dart'
    as _i1;
import 'package:flutter_challenge/ui/screens/article_list_screen.dart' as _i2;
import 'package:flutter_challenge/ui/screens/favourite_article_view.dart'
    as _i6;
import 'package:flutter_challenge/ui/screens/offline_screen.dart' as _i3;
import 'package:flutter_challenge/ui/screens/splash_screen.dart' as _i4;
import 'package:flutter_challenge/ui/widgets/full_screen_image.dart' as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    ArticleDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ArticleDetailScreen(
          key: args.key,
          article: args.article,
        ),
      );
    },
    ArticleListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ArticleListScreen(),
      );
    },
    OfflineRoute.name: (routeData) {
      final args = routeData.argsAs<OfflineRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.OfflineScreen(
          key: args.key,
          onRetry: args.onRetry,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashScreen(),
      );
    },
    FullRouteImage.name: (routeData) {
      final args = routeData.argsAs<FullRouteImageArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.FullScreenImage(
          key: args.key,
          imageUrl: args.imageUrl,
        ),
      );
    },
    FavouriteArticleView.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavouriteArticleView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ArticleDetailScreen]
class ArticleDetailRoute extends _i7.PageRouteInfo<ArticleDetailRouteArgs> {
  ArticleDetailRoute({
    _i8.Key? key,
    required _i9.ArticleModel article,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ArticleDetailRoute.name,
          args: ArticleDetailRouteArgs(
            key: key,
            article: article,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticleDetailRoute';

  static const _i7.PageInfo<ArticleDetailRouteArgs> page =
      _i7.PageInfo<ArticleDetailRouteArgs>(name);
}

class ArticleDetailRouteArgs {
  const ArticleDetailRouteArgs({
    this.key,
    required this.article,
  });

  final _i8.Key? key;

  final _i9.ArticleModel article;

  @override
  String toString() {
    return 'ArticleDetailRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [_i2.ArticleListScreen]
class ArticleListRoute extends _i7.PageRouteInfo<void> {
  const ArticleListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ArticleListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticleListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OfflineScreen]
class OfflineRoute extends _i7.PageRouteInfo<OfflineRouteArgs> {
  OfflineRoute({
    _i10.Key? key,
    required void Function() onRetry,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          OfflineRoute.name,
          args: OfflineRouteArgs(
            key: key,
            onRetry: onRetry,
          ),
          initialChildren: children,
        );

  static const String name = 'OfflineRoute';

  static const _i7.PageInfo<OfflineRouteArgs> page =
      _i7.PageInfo<OfflineRouteArgs>(name);
}

class OfflineRouteArgs {
  const OfflineRouteArgs({
    this.key,
    required this.onRetry,
  });

  final _i10.Key? key;

  final void Function() onRetry;

  @override
  String toString() {
    return 'OfflineRouteArgs{key: $key, onRetry: $onRetry}';
  }
}

/// generated route for
/// [_i4.SplashScreen]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FullScreenImage]
class FullRouteImage extends _i7.PageRouteInfo<FullRouteImageArgs> {
  FullRouteImage({
    _i10.Key? key,
    required String imageUrl,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          FullRouteImage.name,
          args: FullRouteImageArgs(
            key: key,
            imageUrl: imageUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'FullRouteImage';

  static const _i7.PageInfo<FullRouteImageArgs> page =
      _i7.PageInfo<FullRouteImageArgs>(name);
}

class FullRouteImageArgs {
  const FullRouteImageArgs({
    this.key,
    required this.imageUrl,
  });

  final _i10.Key? key;

  final String imageUrl;

  @override
  String toString() {
    return 'FullRouteImageArgs{key: $key, imageUrl: $imageUrl}';
  }
}

/// generated route for
/// [_i6.FavouriteArticleView]
class FavouriteArticleView extends _i7.PageRouteInfo<void> {
  const FavouriteArticleView({List<_i7.PageRouteInfo>? children})
      : super(
          FavouriteArticleView.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteArticleView';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
