import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gyms/core/utils/gaps.dart';
import 'package:gyms/core/utils/helper.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/media_query_sizes.dart';
import '../../../../../../core/widgets/custom_image.dart';
import '../../../../register/presentation/views/widgets/register_form_decoration.dart';
import 'login_view_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // late AppLocalizations locale;
    // locale = AppLocalizations.of(context)!;
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: InkWell(
              onTap: () =>
                  Navigator.pushReplacementNamed(context, kCodeScreenRoute),
              child: const Icon(
                FontAwesomeIcons.arrowLeftLong,
                color: Colors.white,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: boxCode.get(kCodeDataBox) != null
                  ? CachedNetworkImage(
                      height: context.screenHeight * .17,
                      width: context.screenWidth * .6,
                      // color: Colors.white,
                      imageUrl: boxCode.get(kCodeDataBox)!.logo,
                      placeholder: (context, url) => const BlankImageWidget(),
                      errorWidget: (context, url, error) => Image.asset(
                        AssetsData.logo,
                        height: 150,
                        width: 150,
                        //   color: Colors.white,
                      ),
                    )
                  : Image.asset(
                      AssetsData.logo,
                      height: 150,
                      width: 150,
                      //color: Colors.white,
                    ),
            ),
          ),
          Gaps.vGap20,
          Center(
            child: Text(
              boxCode.get(kCodeDataBox) != null
                  ? boxCode.get(kCodeDataBox)!.name ?? ''
                  : '',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // height: SizeConfig.screenHeight! * 0.79,
                  width: SizeConfig.screenWidth! * 0.85,
                  decoration: formDecoration(),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: LoginViewForm(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
