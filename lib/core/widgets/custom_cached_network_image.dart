import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomCashedNetworkImage extends StatelessWidget {
  const CustomCashedNetworkImage(
      {super.key, required this.imageUrl, this.height, this.width});
  final String imageUrl;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      errorWidget: (context, url, error) => Icon(
        Icons.person,
        color: Theme.of(context).primaryColor,
      ),
      progressIndicatorBuilder: (context, url, progress) => Center(
        child: CircularProgressIndicator(
            value: progress.progress, color: Theme.of(context).primaryColor),
      ),
      imageUrl: imageUrl,
      height: height ?? 40.0,
      fit: BoxFit.fill,
      width: width ?? 40.0,
    );
  }
}
