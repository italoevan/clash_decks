import 'dart:async';

import 'package:commons/commons.dart' as common;
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_login/src/presenter/register/states/register_state.dart';

abstract class RegisterController {
  RegisterState get registerState;
  TextEditingController get emailController;
  TextEditingController get passwordController;
  Future register(GlobalKey<FormState> form, BuildContext context);
}

class RegisterControllerImpl implements RegisterController {
  final common.CadasterUsecase cadasterUsecase;

  Rx<RegisterState> state = Rx(const WaitigDataRegisterState());

  @override
  TextEditingController emailController = TextEditingController();

  @override
  TextEditingController passwordController = TextEditingController();

  RegisterControllerImpl(this.cadasterUsecase);

  @override
  RegisterState get registerState => state.value;

  RegisterState setCurrentState(RegisterState st) => state.value = st;

  void _navigateToHome() {
    Modular.to.pushNamed(common.RoutesUtil.initial + common.RoutesUtil.home);
  }

  @override
  Future register(GlobalKey<FormState> form, BuildContext context) async {
    if (form.currentState!.validate()) {
      setCurrentState(const LoadingDataRegisterState());

      common.Usuario user = createUser();

      var response = await cadasterUsecase
          .cadaster(common.Usuario(email: user.email, password: user.password));

      setCurrentState(const WaitigDataRegisterState());

      print(response);

      response!.fold((l) => showError(l.toString()), (r) => _navigateToHome());
      return;
    }
  }

  void showError(String message) {
    setCurrentState(ErrorRegisterState(message));
    
    Timer(const Duration(seconds: 4),
        () => setCurrentState(const WaitigDataRegisterState()));
  }

  common.Usuario createUser() {
    return common.Usuario(
        email: emailController.text, password: passwordController.text);
  }
}
