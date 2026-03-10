import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gyms/features/code/presentation/views/widgets/code_view_body.dart';
import 'package:gyms/core/utils/hex_color.dart';

class CodeView extends StatelessWidget {
  const CodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#4f3abb"),
      body: FadeInDown(child: const SafeArea(child: CodeViewBody())),
    );
  }
}
