import 'package:adv_karim/featuers/login/data/Model/LoginRequstBodyModel.dart';
import 'package:adv_karim/featuers/login/data/Model/LoginResponseModel.dart';
import 'package:adv_karim/featuers/login/data/repostiry/loginRepo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginInitial());

  TextEditingController username = TextEditingController();

  TextEditingController pass = TextEditingController();
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  Future<void> login() async {
    emit(LoginLoading());

    if (!keyForm.currentState!.validate()) {
      return;
    }
    LoginRequestBodyModel loginBody =
        LoginRequestBodyModel(username: username.text, password: pass.text);
    try {
      final result = await loginRepo.loginUser(loginBody: loginBody);
      if (result.isSuccess) {
        emit(LoginSuccess(result.data!));
      } else {
        emit(LoginError(result.error!));
      }
    } catch (e) {
      emit(LoginError("Login Error $e"));
    }
  }
}
