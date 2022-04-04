import 'package:commons/commons.dart';
import 'package:commons_dependencies/commons_dependencies.dart';

abstract class InitialController {
  void toRegister();
}

class InitialControllerImpl implements InitialController {
  
  @override
  void toRegister() {
    Modular.to.pushNamed(RoutesUtil.initial + RoutesUtil.register);
  }
}
