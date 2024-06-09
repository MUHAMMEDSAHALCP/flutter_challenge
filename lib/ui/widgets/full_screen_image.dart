import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/gen/assets.gen.dart';
import 'package:photo_view/photo_view.dart';

@RoutePage()
class FullScreenImage extends StatelessWidget {
  final String imageUrl;
  const FullScreenImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Assets.svg.backArrow.svg(),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          context.popRoute();
        },
        child: Center(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            imageBuilder: (context, imageProvider) => PhotoView(
              imageProvider: imageProvider,
              backgroundDecoration: const BoxDecoration(
                color: Colors.black,
              ),
              minScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.covered * 2.0,
            ),
            placeholder: (context, url) =>
                const Center(child: CupertinoActivityIndicator()),
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error)),
          ),
        ),
      ),
    );
  }
}
