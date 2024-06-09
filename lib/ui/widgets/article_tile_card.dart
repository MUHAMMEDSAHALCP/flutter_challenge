import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:flutter_challenge/data/providers/article_provider.dart';
import 'package:flutter_challenge/foundation/helpers/date_helper.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';
import 'package:flutter_challenge/ui/widgets/article_image.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ArticleTileCard extends HookConsumerWidget {
  const ArticleTileCard({
    Key? key,
    required this.article,
  }) : super(key: key);

  final ArticleModel article;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double scale = ref.watch(articleCardProvider(article));
    Size screenSize = MediaQuery.of(context).size;
    double imageHeight = screenSize.height * 0.09;
    double imageWidth = screenSize.width * 0.35;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTapDown: (_) => _onTapDown(ref),
        onTapUp: (_) => _onTapUp(ref),
        onTapCancel: () => _onTapUp(ref),
        onTap: () => context.router.push(ArticleDetailRoute(article: article)),
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1.0, end: scale),
          duration: const Duration(milliseconds: 100),
          builder: (context, double animatedScale, child) {
            return Transform.scale(
              scale: animatedScale,
              child: child,
            );
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade50,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.shadowColor,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formatPublishedDate(article.date!.published_at!),
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .w400
                            .s10
                            .dateTextColor,
                      ),
                      const Gap(8),
                      Text(
                        article.title ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .w700
                            .s15
                            .black,
                      ),
                      const Gap(8),
                      Text(
                        article.elem?.description ?? '',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .w300
                            .s8
                            .black,
                      ),
                    ],
                  ),
                ),
                const Gap(16),
                ArticleImage(
                  height: imageHeight,
                  width: imageWidth,
                  imageUrl: article.images?.image, 
                  isFromDetailView: false,
                  articleModel: article,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(WidgetRef ref) {
    ref.read(articleCardProvider(article).notifier).setScale(0.95);
  }

  void _onTapUp(WidgetRef ref) {
    ref.read(articleCardProvider(article).notifier).setScale(1.0);
  }
}
