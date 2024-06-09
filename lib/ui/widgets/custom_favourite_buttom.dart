import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/routes/app_router.gr.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(right: 16),
      icon: Assets.svg.heart.svg(
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(
          AppColor.redAccent,
          BlendMode.srcIn,
        ),
      ),
      onPressed: () {
        context.pushRoute(const FavouriteArticleView());
      },
    );
  }
}
