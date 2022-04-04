import 'package:commons/commons.dart';
import 'package:commons_dependencies/commons_dependencies.dart';
import 'package:flutter/cupertino.dart';

abstract class SplashController {
  Future<void> isLogged();
}

class SplashControllerImpl implements SplashController {
  final IsLoggedUsecase isLoggedUsecase;

  SplashControllerImpl(this.isLoggedUsecase);

  @override
  Future<void> isLogged() async {
    var response = await isLoggedUsecase.isLogged();

    print(response);
    
    switch (response) {
      case true:
        break;
      case false:
        Modular.to.popAndPushNamed(RoutesUtil.login);
    }
  }
}
