import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gyms/features/code/domain/entities/code_entity.dart';
import 'package:gyms/features/code/presentation/manger/code_cubit.dart';
import 'package:gyms/core/utils/assets.dart';
import 'package:gyms/core/utils/gaps.dart';
import 'package:gyms/core/utils/helper.dart';
import 'package:gyms/core/utils/hex_color.dart';
import 'package:hive/hive.dart';

import '../../../../../../../core/locale/app_localizations.dart';
import '../../../../../../../core/utils/commons.dart';
import '../../../../../../../core/utils/constants.dart';
import '../../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../../../../core/widgets/custom_login_text_field.dart';

class CodeViewForm extends StatefulWidget {
  const CodeViewForm({super.key});

  @override
  State<CodeViewForm> createState() => _CodeViewFormState();
}

class _CodeViewFormState extends State<CodeViewForm> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    final codeController = TextEditingController();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    return BlocListener<CodeCubit, CodeState>(
      listener: (context, state) {
        if (state is CodeSuccessful) {
          // var box = Hive.box<LoginEntity>(kEmployeeDataBox);
          // box.put(kEmployeeDataBox, state.user);

          print("DATA => ${state.data}");
          var box = Hive.box<CodeEntity>(kCodeDataBox);
          box.put(kCodeDataBox, state.data);

          Navigator.pushNamed(context, kLoginScreenRoute);
          Commons.showToast(context, message: "تم التسجيل بنجاح");
        } else if (state is CodeFailed) {
          Commons.showToast(context, message: state.message);
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Center(
          //   child: Text(
          //     "تطبيق",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 20,
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ),
          Center(
            child: Image.asset(
              AssetsData.logo,
              height: 150,
              width: 150,
              //    color: Theme.of(context).primaryColor,
            ),
          ),

          Gaps.vGap15,
          Text(
            "كود الجيم",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.w700),
          ),
          Gaps.hGap10,
          Form(
            key: formKey,
            child: CustomLoginTextField(
              key: const Key('phone'),
              imagePath: "assets/icon/card.png",
              controller: codeController,
              stringInTextField: "",
              hintText: "كود الجيم",
              obscureText: false,
              textInputType: TextInputType.number,
              validator: validateUserPhone,
              width: context.screenWidth * 0.8,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: BlocBuilder<CodeCubit, CodeState>(
              builder: (context, state) {
                return state is CodeLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : CustomButton(
                        onTapAvailable: true,
                        textColor: Colors.black,
                        buttonBackGroundColor: HexColor("#D8C500"),
                        buttonText: locale.translate('confirm')!,
                        buttonTapHandler: () async {
                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<CodeCubit>(context)
                                .getCodeData(codeController.text);
                          }
                        },
                        screenWidth: MediaQuery.of(context).size.width * .4,
                      );
              },
            ),
          ),
          Gaps.vGap20,
          // Center(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       CustomPaint(
          //         painter: PathPainter(),
          //         child: const SizedBox(
          //           height: 50,
          //         ),
          //       ),
          //       const ContainerOfLogo(),
          //       Transform(
          //         alignment: Alignment.center,
          //         transform: Matrix4.rotationX(math.ln10),
          //         child: RotationTransition(
          //           turns: const AlwaysStoppedAnimation(180 / 360),
          //           child: CustomPaint(
          //             painter: PathPainter(),
          //             child: const SizedBox(
          //               height: 50,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   width: context.screenWidth,
          //   height: 400,
          //   child: GridView.count(
          //     primary: false,
          //     padding: const EdgeInsets.all(50),
          //     crossAxisSpacing: 20,
          //     mainAxisSpacing: 20,
          //     crossAxisCount: 3,
          //     children: const <Widget>[
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //       ContainerOfLogo(),
          //     ],
          //   ),
          // ),

          Gaps.vGap20,
        ],
      ),
    );
  }
}

class ContainerOfLogo extends StatelessWidget {
  const ContainerOfLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: const ShapeDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsData.logo), fit: BoxFit.contain),
        color: Colors.white,
        shape: OvalBorder(
          side: BorderSide(width: 1.50, color: Color(0xFF4ABA83)),
        ),
      ),
    );
  }
}
