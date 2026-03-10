import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gyms/features/code/presentation/views/widgets/code_welcome_view_body.dart';

class CodeWelcomeView extends StatelessWidget {
  const CodeWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInDown(child: const SafeArea(child: CodeWelcomeViewBody())),
    );
  }
}
