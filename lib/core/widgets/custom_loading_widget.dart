import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/assets.dart';
import '../utils/constants.dart';
import '../utils/gaps.dart';
import 'custom_image.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key, this.loadingText = "جاري التحميل"});
  final String loadingText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
          ),
          CachedNetworkImage(
            height: 150,
            width: 150,
            color: Colors.white,
            imageUrl: boxCode.get(kCodeDataBox)!.logo,
            placeholder: (context, url) => const BlankImageWidget(),
            errorWidget: (context, url, error) => Image.asset(
              AssetsData.logo,
              height: 150,
              width: 150,
              color: Colors.white,
            ),
          ),
          Gaps.vGap30,
          CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
          Gaps.vGap12,
          Text(loadingText),
        ],
      ),
    );
  }
}
