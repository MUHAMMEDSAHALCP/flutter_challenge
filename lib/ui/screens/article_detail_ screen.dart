import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/data/model/article_model.dart';
import 'package:flutter_challenge/data/providers/favourite_article_provider.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:flutter_challenge/foundation/utilities/custom_snackbar_util.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/ui/widgets/article_image.dart';
import 'package:flutter_challenge/ui/widgets/article_details_app_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:timeago/timeago.dart' as timeago;

@RoutePage()
class ArticleDetailScreen extends HookConsumerWidget {
  final ArticleModel article;

  const ArticleDetailScreen({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;
    final isFavourite = ref.watch(favouritesProvider).contains(article);

    return Scaffold(
      backgroundColor: AppColor.detailsViewBgColor,
      appBar: AircleDetailAppBar(
        favouriteIcon: isFavourite
            ? const Icon(Icons.favorite_rounded, color: AppColor.redAccent)
            : Assets.svg.heart.svg(),
        onPressed: () {
          if (isFavourite) {
            ref.read(favouritesProvider.notifier).removeArticle(article);
            CustomSnackbarUtils.showCustomSnackBar(
                context: context,
                message: AppTextConstants.articleRemovedFromFavourites);
          } else {
            ref.read(favouritesProvider.notifier).addArticle(article);
            CustomSnackbarUtils.showCustomSnackBar(
                context: context,
                message: AppTextConstants.articleAddedToFavourites);
          }
        },
      ),
      body: ListView(
        children: [
          _buildHeader(context, screenSize),
          const Gap(24),
          _buildDescription(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, Size size) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 24, bottom: 24),
              width: double.infinity,
              color: AppColor.secondary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title ?? '',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .w700
                        .s24
                        .primary,
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      Assets.svg.clock.svg(),
                      const Gap(4),
                      Text(
                        timeago.format(article.date!.published_at!),
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .w300
                            .s12
                            .timeTextColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.1,
              width: double.infinity,
              color: AppColor.detailsViewBgColor,
            ),
          ],
        ),
        Positioned(
          left: 24,
          right: 24,
          bottom: 0,
          child: ArticleImage(
            height: size.height * 0.2,
            width: double.infinity,
            imageUrl: article.images?.image,
          ),
        ),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        article.elem?.description ?? '',
        style: Theme.of(context).textTheme.labelLarge!.w400.s14.desc,
        textAlign: TextAlign.start,
      ),
    );
  }
}
