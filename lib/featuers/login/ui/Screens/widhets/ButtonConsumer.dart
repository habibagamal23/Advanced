import 'package:adv_karim/core/widgets/CustomButton.dart';
import 'package:adv_karim/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/Loading_widget.dart';
import '../../../../../core/widgets/dialog.dart';

class Buttonconsumer extends StatelessWidget {
  const Buttonconsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(builder: (context, state) {
      if (state is LoginLoading) {
        return  PrettyLoadingWidget();
      }
      return CustomButton(
          text: "Login",
          onPressed: () {
            context.read<LoginCubit>().login();
          });
    }, listener: (context, state) {
      if (state is LoginSuccess) {
        DialogManager.showSuccessDialog(
            context: context,
            title: "Login Success",
            description: "wlecome ${state.loginResponseModel.username}",
            onPress: () {});
      }

      if (state is LoginError) {
        DialogManager.showErrorDialog(
            context: context,
            title: "Login Error",
            description: "Error ${state.err}",
            onPress: () {});
      }
    });
  }
}
