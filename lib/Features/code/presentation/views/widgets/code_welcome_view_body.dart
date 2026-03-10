import 'package:flutter/material.dart';
import 'package:gyms/core/utils/gaps.dart';
import 'package:gyms/core/utils/helper.dart';

import '../../../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/hex_color.dart';
import '../../../../../core/widgets/custom_button.dart';

class CodeWelcomeViewBody extends StatelessWidget {
  const CodeWelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // late AppLocalizations locale;
    // locale = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Image.asset(
          //   AssetsData.splashCodeBackground,
          //   height: context.screenHeight,
          //   width: context.screenWidth,
          //   fit: BoxFit.fill,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Image.asset(
                        AssetsData.logo,
                        height: 150,
                        width: 150,
                        //color: Theme.of(context).primaryColor,
                      )),
                ),
                Gaps.vGap15,
                const Text(
                  'مرحباً بك',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gaps.vGap10,
                const Text(
                  'يمكنك الأن  بدء إستخدام تطبيق الجيمات من    \nخلال إدخال كود الجيم لديك ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    //  letterSpacing: 1.05,
                  ),
                ),
                Gaps.vGap20,
                CustomButton(
                  onTapAvailable: true,
                  buttonBackGroundColor: HexColor("#4f3abb"),
                  buttonText: context.locale.translate('confirm')!,
                  buttonTapHandler: () async {
                    Navigator.pushReplacementNamed(context, kCodeScreenRoute);
                  },
                  screenWidth: MediaQuery.of(context).size.width * .4,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
