import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/extensions/text_style_extension.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';

class CustomSnackbarUtils {
  static void showCustomSnackBar({ required BuildContext context,required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
        content: Text(
          message,
           style: Theme.of(context).textTheme.labelLarge!.w700.s16.primary,
        ),
        backgroundColor: AppColor.secondary,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
