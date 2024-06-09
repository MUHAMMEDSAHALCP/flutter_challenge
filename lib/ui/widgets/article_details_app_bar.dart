import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';

class AircleDetailAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AircleDetailAppBar(
      {super.key, required this.favouriteIcon, required this.onPressed});
  final Widget favouriteIcon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.secondary,
      leading: IconButton(
        padding: const EdgeInsets.only(left: 18),
        icon: Assets.svg.backArrow.svg(),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        AppTextConstants.articleDetail,
        style: Theme.of(context).textTheme.labelLarge!.w400.s16.primary,
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.only(right: 24),
          icon: favouriteIcon,
          onPressed: onPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
