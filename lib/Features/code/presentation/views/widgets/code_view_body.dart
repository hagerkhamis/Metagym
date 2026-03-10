import 'package:flutter/material.dart';

import 'code_view_form.dart';

class CodeViewBody extends StatelessWidget {
  const CodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // late AppLocalizations locale;
    // locale = AppLocalizations.of(context)!;
    return const SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Image.asset(
          //   AssetsData.splash2CodeBackground,
          //   height: context.screenHeight,
          //   width: context.screenWidth,
          //   fit: BoxFit.fill,
          // ),
          // ClipPath(
          //   clipper: RoundedClipper(),
          //   child: Container(
          //     color: Theme.of(context).primaryColor,
          //     height: SizeConfig.screenHeight! * 0.7,
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: CodeViewForm(),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          // Center(
          //   child: Padding(
          //       padding: const EdgeInsets.only(top: 40.0),
          //       child: Image.asset(
          //         AssetsData.logo,
          //         height: 150,
          //         width: 150,
          //         //  color: Colors.white,
          //       )),
          // ),
        ],
      ),
    );
  }
}
