import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gyms/core/utils/constants.dart';

import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    boxCode.get(kCodeDataBox) != null
        ? boxCode
        : Navigator.pushReplacementNamed(context, kCodeScreenRoute);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: FadeInDown(child: const LoginViewBody()),
      ),
    );
  }
}
