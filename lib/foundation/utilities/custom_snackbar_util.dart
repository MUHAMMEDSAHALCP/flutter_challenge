import 'package:flutter/material.dart';
import 'package:flutter_challenge/foundation/constants/text_constant.dart';
import 'package:flutter_challenge/foundation/theme/app_color.dart';

class CustomSnackbarUtils {
  static void showFeatureNotAvailable(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          AppTextConstants.featureNotAvailable,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        backgroundColor: AppColor.black,
        duration: Duration(seconds: 2),
      ),
    );
  }
}
