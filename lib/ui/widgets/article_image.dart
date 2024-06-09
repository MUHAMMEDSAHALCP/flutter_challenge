import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.isFromDetailView = true,
    this.articleModel,
  }) : super(key: key);

  final String? imageUrl;
  final double height;
  final double width;
  final bool isFromDetailView;
  final ArticleModel? articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isFromDetailView) {
          context.router.push(
            FullRouteImage(
              imageUrl: imageUrl ?? "",
            ),
          );
        } else {
          context.router.push(ArticleDetailRoute(article: articleModel!));
        }
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? "",
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: imageProvider,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.shadowColor,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          placeholder: (context, url) =>
              const Center(child: CupertinoActivityIndicator()),
          errorWidget: (context, url, error) => Container(
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.shadowColor,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
